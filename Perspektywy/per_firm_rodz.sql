DROP VIEW IF EXISTS per_firm_rodz
GO
CREATE VIEW per_firm_rodz
AS
select F.idFirmy, F.nazwaFirmy, R.rodzaj from Firmy_Transportowe as F
left join Rodzaje_Firmy_Transportowej as R
on F.idRodzaju = R.idRodzaju
GO