IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajRodzajeMaszyny') DROP PROC dbo.dodajRodzajeMaszyny;
END;
GO

CREATE PROC dodajRodzajeMaszyny
@rodzajMaszyny As varchar (51),
@opis As varchar (251),
@idRodzaju As int NULL OUTPUT

AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
 IF LEN(@rodzajMaszyny) < 3 OR LEN(@rodzajMaszyny) >50 
 THROW 50001,'Nazwa firmy musi sk³adaæ siê od 3 do 50 liter',1;

 IF LEN(@opis) < 3 OR LEN(@opis) > 250 
 THROW 50002, 'Opis musi sk³adaæ siê od 3 znków do 250 znaków',1;
	
INSERT INTO Rodzaje_Maszyn (rodzajMaszyny, opis)
VALUES (@rodzajMaszyny, @opis)
SET @idRodzaju=(select top 1 SCOPE_IDENTITY() from Rodzaje_Maszyn);
        select @idRodzaju as idRodzaju;

END TRY
    BEGIN CATCH
    THROW
    END CATCH
END


--exec dodajRodzajeMaszyny qww,we,''