IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='raportPracownikow') DROP PROC dbo.raportPracownikow;
END;
GO
--Raport, je¿eli jako parametr zostanie wpisany null, wyœwietli wszystich pracowników, w innym przypadku trzeba wpisaæ nazwê zmiany
CREATE PROC raportPracownikow
@zmiana As varchar (16)
AS
BEGIN
DECLARE
	@idProcownika AS int,
	@imieNazwisko As varchar(82),
	@idAdresu As int,
	@stanowisko As varchar(41),
	@pensja As float,
	@plec As varchar (2),
	@data As datetime
	SET @data = getdate()
if @zmiana like 'Poranna' or @zmiana like 'Popo³udniowa'
	BEGIN
		DECLARE Pracownikow_kursor CURSOR FOR
		select idPracownika,imie+' '+nazwisko,idAdresu,stanowisko, zmiana, pensja,plec from per_pracownicy where zmiana LIKE @zmiana
	END
else if @zmiana is null
	begin 
		DECLARE Pracownikow_kursor CURSOR FOR
		select idPracownika,imie+' '+nazwisko,idAdresu,stanowisko, zmiana, pensja,plec from per_pracownicy 
	end
OPEN Pracownikow_kursor;
FETCH NEXT FROM  Pracownikow_kursor INTO @idProcownika,@imieNazwisko, @idAdresu, @stanowisko, @zmiana, @pensja, @plec;
print '     raport wykonano: '   + CAST(@data As nvarchar);
WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT 

		'     idProcownika: ' + CAST(@idProcownika AS nvarchar) +
		'     imie i nazwisko: ' + CAST(@imieNazwisko As nvarchar(82)) +
		'     idAdresu: ' + CAST(@idAdresu AS nvarchar) +
		'     stanowisko: ' + CAST(@stanowisko AS nvarchar(41)) +
		'     zmiana: ' + CAST(@zmiana As nvarchar (16)) +
		'     pensja: ' + CAST(@pensja As nvarchar) +
		'     plec: ' + CAST(@plec As nvarchar (2));


		FETCH NEXT FROM Pracownikow_kursor INTO @idProcownika, @imieNazwisko, @idAdresu, @stanowisko, @zmiana, @pensja, @plec; 
		END;

CLOSE Pracownikow_kursor;
DEALLOCATE Pracownikow_kursor;
END;
GO

