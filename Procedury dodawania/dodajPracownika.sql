IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajPracownika') DROP PROC dbo.dodajPracownika;
END;
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC dodajPracownika
@imie AS varchar(41),
@nazwisko AS varchar(41),
@idAdresu AS int,
@idStanowiska AS int,
@idZmiany AS int,
@pensja AS float, 
@plec AS VARCHAR (2),
@idPracownika AS int NULL OUTPUT 
AS
BEGIN
	SET NOCOUNT ON

	BEGIN TRY
		INSERT INTO Pracownicy (imie, nazwisko, idAdresu, idStanowiska, idZmiany, pensja, plec) 
		VALUES (@imie, @nazwisko, @idAdresu, @idStanowiska, @idZmiany, @pensja, @plec)
		SET @idPracownika=(select top 1 SCOPE_IDENTITY() FROM Pracownicy);
		select @idPracownika as idPracownika; 

	 IF LEN(@imie) < 2 OR LEN(@imie) > 40 
	 THROW 50001, 'Imie musi mieæ od 2 do 40 znaków',1;

	 IF LEN(@nazwisko) < 2 OR LEN(@nazwisko) > 40 
	 THROW 50002, 'Nazwisko musi mieæ od 2 do 40 znaków',1;

	 IF Not Exists (select * from Adresy where idAdresu = @idAdresu)
	 THROW 50003, 'Musi istnieæ taki adres',1;	

	 IF Not Exists (select * from Stanowiska where idStanowiska = @idStanowiska) 
	 THROW 50004, 'Musi istnieæ takie stanowisko',1;

	 IF Not Exists (select * from Zmiany where idZmiany = @idZmiany) 
	 THROW 50005, 'Musi istnieæ taka zmniana',1;

	 IF @pensja < 1800 OR @pensja > 20000 
	 THROW 50006, 'Pensja musi wynosiæ od 1800 do 20000z³',1;

	 IF @plec LIKE '[a-j]' OR @plec LIKE '[n-z]' OR @plec LIKE '[l]' OR @plec !='K' OR @plec = 'M' 
	 THROW 50007, 'P³eæ oznaczana jest jako "K" lub "M"',1;

	END TRY
	BEGIN CATCH
	THROW
	END CATCH
END

exec dodajPracownika a,ddd,3,3,2,2000,M,''

delete from pracownicy where idPracownika = 152