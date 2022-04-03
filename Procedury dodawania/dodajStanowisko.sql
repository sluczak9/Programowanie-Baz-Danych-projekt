IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajStanowisko') DROP PROC dbo.dodajStanowisko;
END;
GO

CREATE PROC dodajStanowisko
@stanowisko As varchar (41),
@idStanowiska As int NULL OUTPUT

AS
BEGIN
	SET NOCOUNT ON
	BEGIN TRY
		
		INSERT INTO Stanowiska(stanowisko)
		VALUES (@stanowisko);
		SET @idStanowiska=(select top 1 SCOPE_IDENTITY() from Stanowiska);
		select @idStanowiska as idStanowiska;

		IF LEN(@stanowisko) < 3 OR LEN(@stanowisko) > 40 
		THROW 50001, 'Nazwa stanowiska musi sk³adaæ siê od 3 do 40 znaków',1;
	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END

exec dodajStanowisko ww,''