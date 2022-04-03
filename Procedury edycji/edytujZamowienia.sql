IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='edytujZamowienia') DROP PROC dbo.edytujZamowienia;
END;
GO

CREATE PROC edytujZamowienia
@idZamowienia As int,
@terminZamowienia As dateTime=null,
@idRodzajuZamowien As int=null

AS
BEGIN
	BEGIN TRY
	SET NOCOUNT ON

	IF Not Exists (select * from Zamowienia where idZamowienia=@idZamowienia) 
	THROW 50001, 'Musi istnieæ takie zamowienie',1;

	IF @terminZamowienia < GETDATE() 
	THROW 50001,'Termin zamówienia nie mo¿e byæ wyznaczony na datê wczeœniejsz¹ od dzisiejszej',1;

	IF @idRodzajuZamowien IS NOT NULL AND NOT EXISTS (select * from Rodzaje_Zamowien where idRodzaju = @idRodzajuZamowien) 
	THROW 50002,'Musi istnieæ taki rodzaj zamówieñ',1;

	UPDATE Zamowienia
		SET	terminZamowienia=ISNULL(@terminZamowienia,terminZamowienia),
			idRodzajuZamowien=ISNULL(@idRodzajuZamowien,idRodzajuZamowien)
			WHERE idZamowienia=@idZamowienia;

END TRY
	BEGIN CATCH 
	THROW
	END CATCH
END
