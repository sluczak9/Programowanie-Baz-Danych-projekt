CREATE OR REPLACE VIEW per_firm_rodz
AS
select Firmy_Transportowe.idFirmy, Firmy_Transportowe.nazwaFirmy, Rodzaje_Firmy_Transportowej.rodzaj from Firmy_Transportowe
left join Rodzaje_Firmy_Transportowej
on Firmy_Transportowe .idRodzaju = Rodzaje_Firmy_Transportowej.idRodzaju;
-----------
CREATE OR REPLACE VIEW per_obsl_zam
AS
select Zamowienia.idZamowienia, 
	   Rodzaje_Zamowien.rodzaj,
	   Zamowienia.dataStworzeniaZamowienia,
	   Zamowienia.terminZamowienia,
	   Statusy_Zamowienia.nazwaStatusu, 
	   Pracownicy.idPracownika, 
	   Pracownicy.imie,
	   Pracownicy.nazwisko,
	   Zmiany.zmiana,
	   Maszyny.nazwaMaszyny
from Zamowienia 
inner join Rodzaje_Zamowien 
on Zamowienia.idRodzajuZamowien=Rodzaje_Zamowien.idRodzaju
inner join Obsluga_Zamowien
on Zamowienia.idZamowienia = Obsluga_Zamowien.idZamowienia
inner join Pracownicy
on Obsluga_Zamowien.idPracownika = Pracownicy.idPracownika
inner join Statusy_Zamowienia
on Zamowienia.idStatusu = Statusy_Zamowienia.idStatusu
inner join Zmiany 
on Pracownicy.idZmiany = Zmiany.idZmiany
LEFT JOIN Maszyny
LEFT JOIN Uzywanie_Maszyn
ON Maszyny.idMaszyny = Uzywanie_Maszyn.idMaszyny
ON Pracownicy.idPracownika = Uzywanie_Maszyn.idPracownika;
------------------------
CREATE OR REPLACE VIEW per_prac_maszyny
AS
select Pracownicy.idPracownika,
Pracownicy.imie,Pracownicy.nazwisko,
Stanowiska.stanowisko, 
Zmiany.zmiana, 
Maszyny.nazwaMaszyny
from Pracownicy
LEFT JOIN Stanowiska
ON Pracownicy.idStanowiska = Stanowiska.idStanowiska
LEFT JOIN Zmiany
ON Pracownicy.idZmiany = Zmiany.idZmiany
LEFT JOIN Maszyny
LEFT JOIN Uzywanie_Maszyn
ON Maszyny.idMaszyny = Uzywanie_Maszyn.idMaszyny
ON Pracownicy.idPracownika = Uzywanie_Maszyn.idPracownika

-----------------
CREATE OR REPLACE VIEW per_pracownicy
AS
Select Pracownicy.idPracownika, Pracownicy.imie, Pracownicy.nazwisko, Pracownicy.idAdresu, Stanowiska.stanowisko, Zmiany.zmiana, Pracownicy.pensja, Pracownicy.plec
	FROM Pracownicy
	LEFT JOIN Stanowiska
	ON Stanowiska.idStanowiska = Pracownicy.idStanowiska
	LEFT JOIN Zmiany
	ON Zmiany.idZmiany = Pracownicy.idZmiany
--------------------
CREATE OR REPLACE VIEW per_stan_maszyn
AS
Select Maszyny.idMaszyny, Maszyny.nazwaMaszyny,Maszyny.sprawna, Rodzaje_Maszyn.rodzajMaszyny from Maszyny
inner join Rodzaje_Maszyn
on Maszyny.idRodzaju=Rodzaje_Maszyn.idRodzaju

--------------
CREATE OR REPLACE VIEW per_tow_stan
AS
select Towary_Na_Stanie.idTowaru, Towary.towar, Towary.marka, Towary_Na_Stanie.iloscSztuk, Regaly.regal, Sektory.sektor
from Towary_Na_Stanie
left join Towary
on Towary_Na_Stanie.idTowaru = Towary.idTowaru
left join Regaly
on Towary_Na_Stanie.idRegalu = Regaly.idRegalu
left join Sektory
on Regaly.idSektoru = Sektory.idSektoru
------------
CREATE OR REPLACE VIEW per_zam_po_dacie
AS
select Zamowienia.idZamowienia,Pozycje_Zamowien.idPozycjiZamowien, Zamowienia.terminZamowienia,Towary.towar,Pozycje_Zamowien.ilosc from Zamowienia
inner join Pozycje_Zamowien
on Zamowienia.idZamowienia=Pozycje_Zamowien.idZamowienia
inner join Towary
on Pozycje_Zamowien.idTowaru=Towary.idTowaru
-----------
