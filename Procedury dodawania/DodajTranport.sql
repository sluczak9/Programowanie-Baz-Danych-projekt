IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajTransporty') DROP PROC dbo.dodajTransporty;
END;
GO
CREATE PROC dodajTransporty
@idZamowienia AS int,
@idFirmy AS int
AS
	BEGIN
	SET NOCOUNT ON
	BEGIN TRY
		IF Not Exists (select * from Zamowienia where idZamowienia = @idZamowienia) 
		THROW 50001,'Musi istnieæ takie zamówienie',1;
		
		IF Not Exists (select * from Firmy_Transportowe where idFirmy = @idFirmy) 
		THROW 50002, 'Musi istnieæ taka firma',1;	

		INSERT INTO Transporty (idZamowienia, idFirmy) 
		VALUES (@idZamowienia, @idFirmy);
	END TRY
	BEGIN CATCH 
	THROW
	END CATCH
END


