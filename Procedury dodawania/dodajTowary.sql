IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajTowary') DROP PROC dbo.dodajTowary;
END;
GO

CREATE PROC dodajTowary
@towar As varchar (51),
@opis As varchar (151),
@iloscSztuk As int,
@marka As varchar(31),
@idRodzajuTowaru As int,
@idTowaru As Int NULL OUTPUT

AS
BEGIN
SET NOCOUNT ON
    BEGIN TRY
 IF LEN(@towar) < 3 OR LEN(@towar) >50 
 THROW 50001,'Nazwa towaru musi sk³adaæ siê od 3 do 25 znaków',1;

 IF LEN(@opis) < 1 OR LEN (@opis) > 150 
 THROW 50002,'Opis nie mo¿e byæ pusty oraz musi k³adaæ siê z maksymalnie 150 znaków',1;

 IF @iloscSztuk < 1 OR @iloscSztuk > 10000 
 THROW 50003, 'Iloœæ sztuk nie mo¿e byæ mniejsza od 1 oraz wiêksza ni¿ 10 tysiêcy', 1;

IF LEN(@marka) < 1 OR LEN(@marka) > 30 
THROW 50004,'Pole marka nie mo¿e byæ puste oraz musi sk³adaæ siê z maksymalnie 30 znaków', 1;

IF NOT EXISTS (select * from Rodzaje_Towarow where idRodzaju = @idRodzajuTowaru) 
THROW 50005,'Musi istnieæ taki rodzaj towaru',1;
	

INSERT INTO Towary (towar, opis, iloscSztuk, marka, idRodzajuTowaru)
VALUES (@towar, @opis, @iloscSztuk, @marka, @idRodzajuTowaru)
SET @idTowaru=(select top 1 SCOPE_IDENTITY() from Towary);
        select @idTowaru as idTowaru;
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

