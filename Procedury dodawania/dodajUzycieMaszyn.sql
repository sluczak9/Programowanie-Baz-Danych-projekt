IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajUzycieMaszyny') DROP PROC dbo.dodajUzycieMaszyny;
END;
GO

CREATE PROC dodajUzycieMaszyny
@idMaszyny AS int,
@idPracownika As int


AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY

IF Not Exists (select * from Maszyny where idMaszyny = @idMaszyny) 
THROW 50001,'Musi istnieæ taka maszyna', 1;

IF Not Exists (select * from Pracownicy where idPracownika = @idPracownika) 
THROW 50002,'Musi istnieæ taki pracownik',1;


INSERT INTO Uzywanie_Maszyn (idMaszyny, idPracownika) 
VALUES (@idMaszyny, @idPracownika)


END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

select * From Uzywanie_Maszyn



