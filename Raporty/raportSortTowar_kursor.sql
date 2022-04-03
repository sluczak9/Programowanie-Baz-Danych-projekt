IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='raportSortTowar') DROP PROC dbo.raportSortTowar;
END;
GO

CREATE PROC raportSortTowar
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

DECLARE SortTowar_kursor CURSOR FOR

Select T.idTowaru, T.towar,T.marka, T.opis, RT.rodzajTowaru, T.iloscSztuk
	FROM Towary AS T
	LEFT JOIN Rodzaje_Towarow AS RT
	ON T.idRodzajuTowaru = RT.idRodzaju
	ORDER BY RT.rodzajTowaru ASC

OPEN SortTowar_kursor;
FETCH NEXT FROM  SortTowar_kursor INTO @idTowaru, @towar,@marka,@opis, @rodzajTowaru,@ilosc;
print '     raport wykonano: '   + CAST(@data As nvarchar);
WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT 
		'Id towary: ' + CAST(@idTowaru AS nvarchar) +
		'     towar: ' + CAST(@towar AS nvarchar(51)) +
		'     marka: ' + CAST(@marka AS nvarchar(31)) +
		'     opis: ' + CAST(@opis AS nvarchar(151)) +
		'     rodzajTowaru: ' + CAST(@rodzajTowaru AS nvarchar(31)) +
		'     iloœæ: '+ CAST(@ilosc AS nvarchar);

		FETCH NEXT FROM SortTowar_kursor INTO @idTowaru, @towar, @marka, @opis, @rodzajTowaru,@ilosc; 
		END;

CLOSE SortTowar_kursor;
DEALLOCATE SortTowar_kursor;
END;
GO


--exec raportSortTowar