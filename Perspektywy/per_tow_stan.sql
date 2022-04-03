DROP VIEW IF EXISTS per_tow_stan
GO
CREATE VIEW per_tow_stan
AS
select TS.idTowaru, T.towar, T.marka, TS.iloscSztuk, R.regal, S.sektor
from Towary_Na_Stanie as TS
left join Towary as T
on TS.idTowaru = T.idTowaru
left join Regaly as R
on TS.idRegalu = R.idRegalu
left join Sektory as S
on R.idSektoru = S.idSektoru
GO


