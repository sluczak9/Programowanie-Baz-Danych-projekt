DROP VIEW IF EXISTS per_pracownicy
GO
CREATE VIEW per_pracownicy
AS
Select P.idPracownika, P.imie, P.nazwisko, P.idAdresu, S.stanowisko, Z.zmiana, P.pensja, P.plec
	FROM Pracownicy AS P
	LEFT JOIN Stanowiska AS S
	ON S.idStanowiska = P.idStanowiska
	LEFT JOIN Zmiany AS Z
	ON Z.idZmiany = P.idZmiany

GO