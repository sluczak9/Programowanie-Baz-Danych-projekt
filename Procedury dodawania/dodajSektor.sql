IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajSektor') DROP PROC dbo.dodajSektor;
END;
GO

CREATE PROC dodajSektor
@sektor As varchar (2),
@idSektoria As int null Output
AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
 IF LEN(@sektor) != 1  
 THROW 50001,'Nazwa sektora musi sk³adaæ siê z 1 znaku',1;

INSERT INTO Sektory(sektor)
VALUES (@sektor)
SET @idSektoria=(select top 1 SCOPE_IDENTITY() from Sektory);
        select @idSektoria as idSektoria;
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

--exec dodajSektor 32,''