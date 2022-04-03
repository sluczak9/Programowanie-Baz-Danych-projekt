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
 THROW 50001,'Nazwa towaru musi sk�ada� si� od 3 do 25 znak�w',1;

 IF LEN(@opis) < 1 OR LEN (@opis) > 150 
 THROW 50002,'Opis nie mo�e by� pusty oraz musi k�ada� si� z maksymalnie 150 znak�w',1;

 IF @iloscSztuk < 1 OR @iloscSztuk > 10000 
 THROW 50003, 'Ilo�� sztuk nie mo�e by� mniejsza od 1 oraz wi�ksza ni� 10 tysi�cy', 1;

IF LEN(@marka) < 1 OR LEN(@marka) > 30 
THROW 50004,'Pole marka nie mo�e by� puste oraz musi sk�ada� si� z maksymalnie 30 znak�w', 1;

IF NOT EXISTS (select * from Rodzaje_Towarow where idRodzaju = @idRodzajuTowaru) 
THROW 50005,'Musi istnie� taki rodzaj towaru',1;
	

INSERT INTO Towary (towar, opis, iloscSztuk, marka, idRodzajuTowaru)
VALUES (@towar, @opis, @iloscSztuk, @marka, @idRodzajuTowaru)
SET @idTowaru=(select top 1 SCOPE_IDENTITY() from Towary);
        select @idTowaru as idTowaru;
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

