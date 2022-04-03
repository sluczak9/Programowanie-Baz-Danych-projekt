IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajRodzajeZamowien') DROP PROC dbo.dodajRodzajeZamowien;
END;
GO

CREATE PROC dodajRodzajeZamowien
@rodzaj As varchar (31),
@idRodzaju As int null OUTPUT
AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
 IF LEN(@rodzaj) < 2 OR LEN(@rodzaj) >30 
 THROW 50001,'Nazwa rodzaju zamówieñ musi sk³adaæ siê od 2 do 30 znaków',1;
	
INSERT INTO Rodzaje_Zamowien(rodzaj)
VALUES (@rodzaj)
SET @idRodzaju=(select top 1 SCOPE_IDENTITY() from Rodzaje_Zamowien);
        select @idRodzaju as idRodzaju;
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

--exec dodajRodzajeZamowien q,''
