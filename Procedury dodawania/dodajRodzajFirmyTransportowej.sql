IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajRodzajFirmyTransp') DROP PROC dbo.dodajRodzajFirmyTransp;
END;
GO

CREATE PROC dodajRodzajFirmyTransp
@rodzaj As varchar (31),
@idRodzaju as int NULL OUTPUT

AS
BEGIN
	SET NOCOUNT ON
	BEGIN TRY
	IF LEN(@rodzaj) < 3 OR LEN(@rodzaj) > 31 
	THROW 50001,'Nazwa rodzaju firmy transportowej musi sk³adaæ siê od 3 do 30 znaków',1;

	INSERT INTO Rodzaje_Firmy_Transportowej(rodzaj)
	VALUES (@rodzaj);
	SET @idRodzaju=(select top 1 SCOPE_IDENTITY() from Rodzaje_Firmy_Transportowej);
	select @idRodzaju as idRodzaju;
	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END

