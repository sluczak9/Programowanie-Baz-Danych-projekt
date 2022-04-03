IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajPrzeglady') DROP PROC dbo.dodajPrzeglady;
END;
GO

CREATE PROC dodajPrzeglady
@waznoscPrzegladu AS dateTime,
@idMaszyny AS int,
@idPrzegladu As int NULL output

AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
	
	IF @waznoscPrzegladu < GETDATE() 
	THROW 50001,'Termin wa¿noœci zamówienia nie mo¿e byæ wyznaczony na datê wczeœniejsz¹ od dzisiejszej',1;

	IF NOT EXISTS (select * from Maszyny where idMaszyny = @idMaszyny) 
	THROW 50002,'Musi istnieæ taka maszyna',1;

		INSERT INTO Przeglady (waznoscPrzegladu, idMaszyny)
		VALUES (@waznoscPrzegladu, @idMaszyny)
		SET @idPrzegladu =(select top 1 SCOPE_IDENTITY() FROM Przeglady);
		select @idPrzegladu as idPrzegladu; 
	

	

	END TRY
	BEGIN CATCH
	THROW
	END CATCH
		
END

--exec dodajPrzeglady '1999-11-12 22:12:00',2,''