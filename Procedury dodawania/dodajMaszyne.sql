IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajMaszyne') DROP PROC dbo.dodajMaszyne;
END;
GO

CREATE PROC dodajMaszyne
@nazwaMaszyny AS varchar(61),
@sprawna AS varchar(4),
@idRodzaju AS int,
@idMaszyny As int null OUTPUT
AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY

 IF LEN(@nazwaMaszyny) < 3 OR LEN(@nazwaMaszyny) > 61 
 THROW 50001,'Nazwa Maszyny musi mieæ od 3 do 60 znaków',1;

 IF LEN(@sprawna) != 3 
 THROW 50002,'Sprawnoœæ oznaczamy poprzez s³owo "TAK" lub "NIE"',1;

 IF Not Exists (select * from Rodzaje_Maszyn where idRodzaju = @idRodzaju) 
 THROW 50003,'Musi istnieæ taki rodzaj maszyny',1;			

INSERT INTO Maszyny (nazwaMaszyny, sprawna, idRodzaju) 
VALUES (@nazwaMaszyny, @sprawna, @idRodzaju)
SET @idMaszyny=(select top 1 SCOPE_IDENTITY() from Maszyny);
        select @idMaszyny as idMaszyny;
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END


--exec dodajMaszyne qw2,NIE,900,''
