DROP VIEW IF EXISTS per_prac_maszyny
GO
CREATE VIEW per_prac_maszyny
AS
select P.idPracownika,
P.imie + ' ' + P.nazwisko as 'imiê i naziwsko',
S.stanowisko, 
Z.zmiana, 
M.nazwaMaszyny
from Pracownicy as P
LEFT JOIN Stanowiska as S
ON P.idStanowiska = S.idStanowiska
LEFT JOIN Zmiany as Z
ON P.idZmiany = Z.idZmiany
LEFT JOIN Maszyny as M
LEFT JOIN Uzywanie_Maszyn as U
ON M.idMaszyny = U.idMaszyny
ON P.idPracownika = U.idPracownika
GO

select * from per_prac_maszyny