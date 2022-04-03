DROP VIEW IF EXISTS per_zam_po_dacie
GO
CREATE VIEW per_zam_po_dacie
AS
select Z.idZamowienia ,P.idPozycjiZamowien, Z.terminZamowienia,T.towar,P.ilosc from Zamowienia as Z
inner join Pozycje_Zamowien as P
on Z.idZamowienia=P.idZamowienia
inner join Towary as T
on P.idTowaru=T.idTowaru
GO
