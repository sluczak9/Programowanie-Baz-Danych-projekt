IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajObslugeZam') DROP PROC dbo.dodajObslugeZam;
END;
GO

CREATE PROC dodajObslugeZam
@idPracownika AS int,
@idZamowienia AS int

AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY

	IF Not Exists (select * from Pracownicy where idPracownika = @idPracownika) 
	THROW 50001,'Musi istnieæ taki pracownik',1;

	IF Not Exists (select * from Zamowienia where idZamowienia = @idZamowienia) 
	THROW 50002,'Musi istnieæ takie zamówienie',1;

INSERT INTO Obsluga_Zamowien(idPracownika, idZamowienia) 
VALUES (@idPracownika, @idZamowienia)

END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

--exec dodajObslugeZam 256,1