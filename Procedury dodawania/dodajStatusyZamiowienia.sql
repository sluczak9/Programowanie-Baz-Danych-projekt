IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajStatusyZam') DROP PROC dbo.dodajStatusyZam;
END;
GO

CREATE PROC dodajStatusyZam
@nazwaStatusu As varchar (26),
@idStatusu As int NULL OUTPUT

AS
BEGIN
	SET NOCOUNT ON
	BEGIN TRY
		IF LEN(@nazwaStatusu) < 2 OR LEN(@nazwaStatusu) >25 
		THROW 50001,'Nazwa rodzaju zamówieñ musi sk³adaæ siê od 2 do 25 znaków',1;
	
		INSERT INTO Statusy_Zamowienia(nazwaStatusu)
		VALUES (@nazwaStatusu);
		SET @idStatusu=(select top 1 SCOPE_IDENTITY() from Statusy_Zamowienia);
		select @idStatusu as idStatusu
	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END
