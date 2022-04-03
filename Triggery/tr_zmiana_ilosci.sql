DROP TRIGGER IF EXISTS tr_zmiana_ilosci
GO 

CREATE TRIGGER tr_zmiana_ilosci ON Pozycje_Zamowien
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON
	DECLARE 
	@idPozycji as int,
	@ilosc as int,
	@idZamowienia as int,
	@idTowaru as int
	SET @idPozycji=(SELECT idPozycjiZamowien FROM INSERTED);
	SET @ilosc=(select ilosc from Pozycje_Zamowien where idPozycjiZamowien=@idPozycji);
	SET @idZamowienia=(select idZamowienia from Pozycje_Zamowien where idPozycjiZamowien=@idPozycji);
	SET @idTowaru=(select idTowaru from Pozycje_Zamowien where idPozycjiZamowien=@idPozycji);

	IF (select R.idRodzaju from Rodzaje_Zamowien as R
		inner join Zamowienia as Z
		on Z.idRodzajuZamowien=R.idRodzaju
		inner join Pozycje_Zamowien as P
		on P.idZamowienia=Z.idZamowienia
		where P.idPozycjiZamowien=@idPozycji)=1
		BEGIN
		UPDATE Towary_Na_Stanie
		SET iloscSztuk=iloscSztuk+@ilosc
		WHERE idTowaru=@idTowaru;

		UPDATE Towary
		SET iloscSztuk=iloscSztuk-@ilosc
		WHERE idTowaru=@idTowaru;
		END
	IF (select R.idRodzaju from Rodzaje_Zamowien as R
		inner join Zamowienia as Z
		on Z.idRodzajuZamowien=R.idRodzaju
		inner join Pozycje_Zamowien as P
		on P.idZamowienia=Z.idZamowienia
		where P.idPozycjiZamowien=@idPozycji)=2
		BEGIN
		UPDATE Towary_Na_Stanie
		SET iloscSztuk=iloscSztuk-@ilosc
		WHERE idTowaru=@idTowaru;
		END
END
GO

