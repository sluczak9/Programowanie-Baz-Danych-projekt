IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='edytujTowary') DROP PROC dbo.edytujTowary;
END;
GO

CREATE PROC edytujTowary
@idTowaru As int,
@towar As varchar (51)=null,
@opis As varchar (151)=null,
@iloscSztuk As int=null,
@marka As varchar(31)=null,
@idRodzajuTowaru As int=null

AS
BEGIN
	BEGIN TRY
		IF NOT EXISTS (select * from Towary where idTowaru = @idTowaru) 
		THROW 50001,'Musi istnieæ taki towar',1;

		IF @towar IS NOT NULL AND LEN(@towar) < 3 OR LEN(@towar) >50 
		THROW 50002,'Nazwa towaru musi sk³adaæ siê od 3 do 50 znaków',1;

	    IF @opis IS NOT NULL AND LEN(@opis) < 1 OR LEN (@opis) > 150 
		THROW 50003,'Opis nie mo¿e byæ pusty oraz musi k³adaæ siê z maksymalnie 150 znaków',1;

		IF @iloscSztuk IS NOT NULL AND @iloscSztuk < 1 OR @iloscSztuk > 10000 
		THROW 50004,'Iloœæ sztuk nie mo¿e byæ mniejsza od 1 oraz wiêksza ni¿ 10 tysiêcy',1;

		IF @marka IS NOT NULL AND LEN(@marka) < 1 OR LEN(@marka) > 30 
		THROW 50005,'Pole marka nie mo¿e byæ puste oraz musi sk³adaæ siê z maksymalnie 30 znaków',1;

		IF @idRodzajuTowaru IS NOT NULL AND NOT EXISTS (select * from Rodzaje_Towarow where idRodzaju = @idRodzajuTowaru) AND @idRodzajuTowaru IS NOT NULL 
		THROW 50006,'Musi istnieæ taki rodzaj towaru',1;
	ELSE
		UPDATE Towary
			SET	towar=ISNULL(@towar,towar),
				opis=ISNULL(@opis,opis),
				iloscSztuk=ISNULL(@iloscSztuk,iloscSztuk),
				marka=ISNULL(@marka,marka),
				idRodzajuTowaru=ISNULL(@idRodzajuTowaru,idRodzajuTowaru)
			WHERE idTowaru=@idTowaru
	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END
