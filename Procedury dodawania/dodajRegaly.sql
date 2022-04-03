IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajRegal') DROP PROC dbo.dodajRegal;
END;
GO

CREATE PROC dodajRegal
@regal As varchar(3),
@idSektoru As int,
@idRegalu AS int NULL OUTPUT
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
		 IF LEN(@regal) < 1 OR LEN(@regal) > 3 
		 THROW 50001,'Nazwa rega³u musi sk³adaæ siê od 1 do 3 znaków',1;

		IF not exists (select * from Sektory where idSektoru = @idSektoru) 
		THROW 50002,'Musi istnieæ taki sektor',1;

		INSERT INTO Regaly (regal, idSektoru)
		VALUES (@regal, @idSektoru);
		SET @idRegalu=(select top 1 SCOPE_IDENTITY() from Regaly);
		select @idRegalu as idRegalu

	END TRY 
	BEGIN CATCH 
	THROW
	END CATCH
END
