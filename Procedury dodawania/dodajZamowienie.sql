IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajZamowienia') DROP PROC dbo.dodajZamowienia;
END;
GO

CREATE PROC dodajZamowienia
@terminZamowienia As dateTime,
@idRodzajuZamowien As int,
@idStatusu As int,
@idZamowienia As int NULL OUTPUT
AS
BEGIN
	BEGIN TRY
	SET NOCOUNT ON

	IF @terminZamowienia < GETDATE() 
	THROW 50001,'Termin zam�wienia nie mo�e by� wyznaczony na dat� wcze�niejsz� od dzisiejszej',1;

	IF NOT EXISTS (select * from Rodzaje_Zamowien where idRodzaju = @idRodzajuZamowien) 
	THROW 50002,'Musi istnie� taki rodzaj zam�wie�',1;

	IF NOT EXISTS (select * from Statusy_Zamowienia where idStatusu = @idStatusu) 
	THROW 50003, 'Musi istnie� taki status',1; 

	INSERT INTO Zamowienia (terminZamowienia, idRodzajuZamowien, idStatusu)
	VALUES (@terminZamowienia, @idRodzajuZamowien, @idStatusu);
	SET @idZamowienia=(select top 1 SCOPE_IDENTITY() from Zamowienia);
	select @idZamowienia as idZamowienia;

END TRY
	BEGIN CATCH 
	THROW
	END CATCH
END
