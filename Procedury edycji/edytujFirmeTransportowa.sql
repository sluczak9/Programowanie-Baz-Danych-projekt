IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='edytujFirmeTransportowa') DROP PROC dbo.edytujFirmeTransportowa;
END;
GO

CREATE PROC edytujFirmeTransportowa
@idFirmy As int,
@nazwaFirmy As nvarchar (51)=NULL,
@idRodzaju As int =NULL

AS
BEGIN
	BEGIN TRY
		IF Not Exists (select * from Firmy_Transportowe where idFirmy= @idFirmy) 
		THROW 50001,'Musi istnieæ taka firma transportowa',1;

		IF @nazwaFirmy IS NOT NULL AND LEN(@nazwaFirmy) < 3 OR LEN(@nazwaFirmy) >50 
		THROW 50002,'Nazwa firmy musi sk³adaæ siê od 3 do 50 liter',1;

		IF @idRodzaju IS NOT NULL AND Not Exists (select * from Rodzaje_Firmy_Transportowej where idRodzaju = @idRodzaju) 
		throw 50003,'Musi istnieæ taki rodzaj firmy transportowej',1;

		UPDATE Firmy_Transportowe
			SET	nazwaFirmy=ISNULL(@nazwaFirmy,nazwaFirmy),
				idRodzaju=ISNULL(@idRodzaju,idRodzaju)
			WHERE idFirmy = @idFirmy
	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END
--select * from Firmy_Transportowe
--exec edytujFirmeTransportowa 1,null,2



