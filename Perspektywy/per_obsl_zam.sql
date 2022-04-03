USE Magazyn_Lupa
GO

DROP VIEW IF EXISTS per_obsl_zam
GO
CREATE VIEW per_obsl_zam
AS
select Z.idZamowienia, 
	   R.rodzaj,
	   Z.dataStworzeniaZamowienia,
	   Z.terminZamowienia,
	   S.nazwaStatusu, 
	   P.idPracownika, 
	   P.imie,
	   P.nazwisko,
	   ZM.zmiana,
	   M.nazwaMaszyny
from Zamowienia as Z
inner join Rodzaje_Zamowien as R
on Z.idRodzajuZamowien=R.idRodzaju
inner join Obsluga_Zamowien as O
on Z.idZamowienia = O.idZamowienia
inner join Pracownicy as P
on O.idPracownika = P.idPracownika
inner join Statusy_Zamowienia as S
on Z.idStatusu = S.idStatusu
inner join Zmiany as ZM
on P.idZmiany = ZM.idZmiany
LEFT JOIN Maszyny as M
LEFT JOIN Uzywanie_Maszyn as U
ON M.idMaszyny = U.idMaszyny
ON P.idPracownika = U.idPracownika
GO
