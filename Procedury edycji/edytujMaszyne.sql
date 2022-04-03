IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='edytujMaszyne') DROP PROC dbo.edytujMaszyne;
END;
GO

CREATE PROC edytujMaszyne
@idMaszyny As int,
@nazwaMaszyny AS varchar(61)=NULL,
@sprawna AS varchar(4)=NULL,
@idRodzaju AS int=NULL
AS
BEGIN
	BEGIN TRY
		IF Not Exists (select * from Maszyny where idMaszyny = @idMaszyny) 
		THROW 50001,'Musi istnieæ taka maszyna',1;

		IF LEN(@nazwaMaszyny) < 3 OR LEN(@nazwaMaszyny) > 61 
		THROW 50002,'Nazwa Maszyny musi mieæ od 3 do 60 znaków',1;

		IF LEN(@sprawna) != 3 
		THROW 50003,'Sprawnoœæ oznaczamy poprzez s³owo "TAK" lub "NIE"',1;

		IF Not Exists (select * from Rodzaje_Maszyn where idRodzaju = @idRodzaju) AND @idRodzaju IS NOT NULL 
		THROW 50004,'Musi istnieæ taki rodzaj maszyny',1;		
		UPDATE Maszyny
			SET	nazwaMaszyny=ISNULL(@nazwaMaszyny,nazwaMaszyny),
				sprawna=ISNULL(@sprawna,sprawna),
				idRodzaju=ISNULL(@idRodzaju,idRodzaju)
			WHERE idMaszyny=@idMaszyny
	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END
