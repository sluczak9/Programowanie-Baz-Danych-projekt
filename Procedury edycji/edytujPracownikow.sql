IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='edytujPracownikow') DROP PROC dbo.edytujPracownikow;
END;
GO
--Procedura która pozwala edytowaæ rekordy po opcjonalnym parametrze 
CREATE PROC edytujPracownikow
@idPracownika As int,
@imie AS varchar(41)= null ,
@nazwisko AS varchar(41)= null,
@idAdresu AS int= null,
@idStanowiska AS int= null,
@idZmiany AS int= null,
@pensja AS float = null, 
@plec AS VARCHAR (2)= null
AS
BEGIN
	BEGIN TRY
		IF Not Exists (select * from Pracownicy where idPracownika = @idPracownika) 
		THROW 50001,'Musi istnieæ taki pracownik',1;
		
		 IF @imie IS NOT NULL  AND LEN(@imie) < 2 OR LEN(@imie) > 40 
		 THROW 50002,'Imie musi mieæ od 2 do 40 znaków',1;

		 IF @nazwisko IS NOT NULL AND LEN(@nazwisko) < 2 OR LEN(@nazwisko) > 40 
		 THROW 50003,'Nazwisko musi mieæ od 2 do 40 znaków',1;

		 IF @idAdresu IS NOT NULL AND Not Exists (select * from Adresy where idAdresu = @idAdresu) 
		 THROW 50004,'Musi istnieæ taki adres',1;
		 
		 IF @idStanowiska IS NOT NULL AND Not Exists (select * from Stanowiska where idStanowiska = @idStanowiska) 
		 THROW 50005,'Musi istnieæ takie stanowisko',1;

		 IF @idZmiany IS NOT NULL AND Not Exists (select * from Zmiany where idZmiany = @idZmiany) 
		 THROW 50006,'Musi istnieæ taka zmniana',1;

		 IF @pensja IS NOT NULL AND @pensja < 1800 OR @pensja > 20000 
		 THROW 50007,'Pensja musi wynosiæ od 1800 do 20000z³',1;

		 IF @plec IS NOT NULL AND @plec != 1 OR @plec !='K' OR @plec = 'M' 
		 THROW 50008,'P³eæ oznaczana jest jako "K" lub "M"',1;
	ELSE
		UPDATE Pracownicy 
			SET	imie=ISNULL(@imie,imie),
				nazwisko=ISNULL(@nazwisko,nazwisko),
				idAdresu=ISNULL(@idAdresu,idAdresu),
				idStanowiska=ISNULL(@idStanowiska,idStanowiska),
				idZmiany=ISNULL(@idZmiany,idZmiany),
				pensja=ISNULL(@pensja,pensja),
				plec=ISNULL(@plec,plec)
			WHERE idPracownika=@idPracownika
		END TRY
		BEGIN CATCH
		THROW
		END CATCH
END
