IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='edytujStatusyZam') DROP PROC dbo.edytujStatusyZam;
END;
GO

CREATE PROC edytujStatusyZam
@idZamowienia As int,
@idStatusu As int

AS
BEGIN
	BEGIN TRY
	IF Not Exists (select * from Zamowienia where idZamowienia = @idZamowienia) 
	THROW 50001,'Musi istnieæ takie zamowienie',1;
	IF NOT EXISTS (select * from Statusy_Zamowienia where idStatusu = @idStatusu) 
	THROW 50002,'Musi istnieæ taki status',1; 
	
	UPDATE Zamowienia
		SET	idStatusu=@idStatusu
		WHERE idZamowienia= @idZamowienia;
	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END
