IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajRodzajeTowarow') DROP PROC dbo.dodajRodzajeTowarow;
END;
GO

CREATE PROC dodajRodzajeTowarow
@rodzajTowaru As varchar (31),
@idRodzaju As int NULL OUTPUT

AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
 IF LEN(@rodzajTowaru) < 2 OR LEN(@rodzajTowaru) >30 
 THROW 50001,'Nazwa firmy musi sk³adaæ siê od 2 do 30 liter',1;
	

INSERT INTO Rodzaje_Towarow (rodzajTowaru)
VALUES (@rodzajTowaru)
SET @idRodzaju=(select top 1 SCOPE_IDENTITY() from Rodzaje_Towarow);
        select @idRodzaju as idRodzaju;
 
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

--exec dodajRodzajeTowarow q,''