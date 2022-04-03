DROP VIEW IF EXISTS per_stan_maszyn
GO
CREATE VIEW per_stan_maszyn
AS
Select M.idMaszyny, M.nazwaMaszyny,M.sprawna, R.rodzajMaszyny from Maszyny as M
inner join Rodzaje_Maszyn as R
on M.idRodzaju=R.idRodzaju
GO