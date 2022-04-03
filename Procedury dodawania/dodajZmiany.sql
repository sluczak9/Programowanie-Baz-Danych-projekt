IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajZmiany') DROP PROC dbo.dodajZmiany;
END;
GO

CREATE PROC dodajZmiany
@zmiana AS varchar (16),
@idZmiany As int NULL OUTPUT

AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY

IF LEN(@zmiana) < 3 OR LEN(@zmiana) > 15 
THROW 50001,'Nazwa zmiany musi sk³adaæ siê od 1 do 15 znaków',1;

INSERT INTO Zmiany(zmiana)
VALUES (@zmiana);
SET @idZmiany=(select top 1 SCOPE_IDENTITY() from Zmiany);
        select @idZmiany as idZmiany;

END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

--exec dodajZmiany qwrqwerqwerqwerqwerqerqre,'';

--select * FROM Zmiany
--Delete From Zmiany WHERE idZmiany > 2
