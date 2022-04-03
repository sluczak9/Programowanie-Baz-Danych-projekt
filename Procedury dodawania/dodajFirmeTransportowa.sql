IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajFirmeTransportowa') DROP PROC dbo.dodajFirmeTransportowa;
END;
GO

CREATE PROC dodajFirmeTransportowa
@nazwaFirmy As nvarchar (51),
@idRodzaju As int,
@idFirmy As int null output

AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
 IF LEN(@nazwaFirmy) < 3 OR LEN(@nazwaFirmy) >50 
 THROW 50001,'Nazwa firmy musi sk³adaæ siê od 3 do 50 liter',1;
 IF Not Exists (select * from Rodzaje_Firmy_Transportowej where idRodzaju = @idRodzaju) 
 THROW 50002,'Musi istnieæ taki rodzaj firmy transportowej',1;

INSERT INTO Firmy_Transportowe (nazwaFirmy, idRodzaju)
VALUES (@nazwaFirmy, @idRodzaju)
SET @idFirmy=(select top 1 SCOPE_IDENTITY() from Firmy_Transportowe);
        select @idFirmy as idFirmy;
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

--exec dodajFirmeTransportowa qww,801,''

