IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='raportTOP10Premii') DROP PROC dbo.raportTOP10Premii;
END;
GO

CREATE PROC raportTOP10Premii
AS
BEGIN
DECLARE 
	@idPrac AS int,
	@imieNazwisko AS nvarchar(81),
	@kwota AS float,
	@data AS datetime,
	@dataRaportu as datetime
    SET @dataRaportu = getdate()

DECLARE premie_kursor CURSOR FOR
	select TOP 10 Pr.idPracownika, P.imie + ' ' + P.nazwisko,  Pr.kwota, Pr.dataWystawienia
	from Premie as Pr
	LEFT JOIN Pracownicy as P
	ON Pr.idPracownika = P.idPracownika
	order by Pr.kwota desc

OPEN premie_kursor;
FETCH NEXT FROM  premie_kursor INTO @idPrac, @imieNazwisko, @kwota, @data;
print 'raport wykonano: '   + CAST(@dataRaportu As nvarchar);
WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT 
		'Id pracownika: ' + CAST(@idPrac AS nvarchar) +
		'     imiê i nazwisko: ' + CAST(@imieNazwisko AS nvarchar(81)) +
		'     kwota: ' + CAST(@kwota AS nvarchar) +
		'     data: ' + CAST(@data AS nvarchar);

		FETCH NEXT FROM premie_kursor INTO @idPrac, @imieNazwisko, @kwota, @data; 
		END;

CLOSE premie_kursor;
DEALLOCATE premie_kursor;
END;
GO

--exec raportTOP10Premii



