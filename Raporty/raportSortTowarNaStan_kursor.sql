IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='raportSortTowarStan') DROP PROC dbo.raportSortTowarStan;
END;
GO

CREATE PROC raportSortTowarStan
AS
BEGIN
DECLARE
	@idTowaru AS int,
	@towar As varchar(51),
	@marka As varchar(31),
	@opis AS varchar(151),
	@rodzajTowaru As varchar(31),
	@ilosc As INT,
	@data as datetime
    SET @data = getdate()

DECLARE SortTowarNaStan_kursor CURSOR FOR

Select T.idTowaru, T.towar,T.marka, T.opis, RT.rodzajTowaru,TNS.iloscSztuk
	FROM Towary AS T
	INNER JOIN Towary_Na_Stanie AS TNS
	ON T.idTowaru=TNS.idTowaru
	LEFT JOIN Rodzaje_Towarow AS RT
	ON T.idRodzajuTowaru = RT.idRodzaju
	ORDER BY RT.rodzajTowaru ASC

OPEN SortTowarNaStan_kursor;
FETCH NEXT FROM  SortTowarNaStan_kursor INTO @idTowaru, @towar,@marka,@opis, @rodzajTowaru, @ilosc;
print '     raport wykonano: '   + CAST(@data As nvarchar);
WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT 
		'Id towary: ' + CAST(@idTowaru AS nvarchar) +
		'     towar: ' + CAST(@towar AS nvarchar(51)) +
		'     marka: ' + CAST(@marka AS nvarchar(31)) +
		'     opis: ' + CAST(@opis AS nvarchar(151)) +
		'     rodzajTowaru: ' + CAST(@rodzajTowaru AS nvarchar(31))+
		'     iloœæ: '+ CAST(@ilosc AS nvarchar);

		FETCH NEXT FROM SortTowarNaStan_kursor INTO @idTowaru, @towar, @marka, @opis, @rodzajTowaru, @ilosc; 
		END;

CLOSE SortTowarNaStan_kursor;
DEALLOCATE SortTowarNaStan_kursor;
END;
GO


--exec raportSortTowarStan