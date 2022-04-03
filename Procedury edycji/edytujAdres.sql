IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='edytujAdres') DROP PROC dbo.edytujAdres;
END;
GO

CREATE PROC edytujAdres
@idAdresu As int,
@ulica As varchar (41)=NULL,
@nrDomu As varchar(11)=NULL,
@nrMieszkania As varchar(4)=NULL,
@miasto As varchar (41)=NULL
AS
BEGIN
	BEGIN TRY
	IF Not Exists (select * from Pracownicy where idAdresu = @idAdresu) 
	THROW 50001, 'Musi istnieæ taki Adres',1;

	 IF @ulica IS NOT NULL AND LEN(@ulica) < 3 OR LEN(@ulica) > 41
	 THROW 50002,'Nazwa ulicy musi sk³adaæ siê od 3 do 40 znaków',1;

	 IF @nrDomu IS NOT NULL AND LEN(@ulica) < 1 OR LEN(@nrDomu) > 3 
	 THROW 50003,'Numer domu mo¿e sk³adaæ siê maksymalnie z liczby 3 cyfrowej',1;

	 IF @nrMieszkania IS NOT NULL AND LEN(@ulica) < 1 OR LEN(@nrMieszkania) > 3 
	 THROW 50004,'Numer mieszkania mo¿e sk³adaæ siê maksymalnie z liczby 3 cyfrowej',1;

	 IF @nrMieszkania IS NOT NULL AND LEN(@miasto) < 3 OR LEN(@miasto) > 40 
	 THROW 50005,'Nazwa miasta musi sk³adaæ siê od 3 do 40 znaków',1;

	UPDATE Adresy
		SET	ulica=ISNULL(@ulica,ulica),
			nrDomu=ISNULL(@nrDomu,nrDomu),
			nrMieszkania=ISNULL(@nrMieszkania,nrMieszkania),
			miasto=ISNULL(@miasto,miasto)
		WHERE idAdresu = @idAdresu;
		END TRY
		BEGIN CATCH
		THROW
		END CATCH
END
