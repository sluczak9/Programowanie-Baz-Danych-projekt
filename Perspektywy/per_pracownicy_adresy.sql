DROP VIEW IF EXISTS per_pracownicy_Adresy
GO
CREATE VIEW per_pracownicy_Adresy
AS
select P.imie, P.nazwisko, P.idZmiany, P.pensja, P.plec, A.ulica, A.nrDomu, A.nrMieszkania, A.miasto from Pracownicy as P
inner join Adresy as A
on P.idAdresu=A.idAdresu
GO



