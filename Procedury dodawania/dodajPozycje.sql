IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajPozycjeZamowien') DROP PROC dbo.dodajPozycjeZamowien;
END;
GO

CREATE PROC dodajPozycjeZamowien
@idZamowienia As int,
@idTowaru As int,
@ilosc As int,
@idPozZam AS int null OUTPUT

AS
BEGIN
	SET NOCOUNT ON

	BEGIN TRY
		IF NOT EXISTS (select * from Zamowienia where idZamowienia = @idZamowienia) 
		THROW 50001,'Musi istnieæ takie zamówienie',1;

		IF NOT EXISTS (select * from Towary where idTowaru = @idTowaru) 
		THROW 50002, 'Musi istnieæ taki towar',1;

		IF @ilosc < 1 
		THROW 50003, 'Iloœæ towarów nie mo¿e byæ mniejsza od 1',1;

		IF NOT EXISTS (select idTowaru from Towary_Na_Stanie where idTowaru = @idTowaru)
		THROW 50004, 'Nie ma takiego towaru na stanie',1;

		IF @ilosc > (select iloscSztuk from Towary where idTowaru = @idTowaru ) 
		AND (select R.idRodzaju from Rodzaje_Zamowien as R, Zamowienia as Z where Z.idZamowienia = @idZamowienia 
		AND R.idRodzaju = 1) = 1 
		THROW 50004,'Iloœæ towarów nie mo¿e byæ mniejsza od 1 oraz wiêksza ni¿ limit towarów',1;

		IF @ilosc > (select iloscSztuk from Towary_Na_Stanie where idTowaru = @idTowaru ) 
		AND (select R.idRodzaju from Rodzaje_Zamowien as R, Zamowienia as Z where Z.idZamowienia = @idZamowienia 
		AND R.idRodzaju = 2) = 2 
		THROW 50004, 'Iloœæ towarów nie mo¿e byæ mniejsza od 1 oraz wiêksza ni¿ limit towarów na stanie',1;

		INSERT INTO Pozycje_Zamowien (idZamowienia, idTowaru, ilosc)
		VALUES (@idZamowienia, @idTowaru, @ilosc);
		SET @idPozZam=(select top 1 SCOPE_IDENTITY() from Pozycje_Zamowien);
		select @idPozZam as idPozycjiZamowien;
	END TRY
	BEGIN CATCH
		THROW
	END CATCH
END

