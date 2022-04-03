IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='raportObslugiMaszyn') DROP PROC dbo.raportObslugiMaszyn;
END;
GO
--Raport
CREATE PROC raportObslugiMaszyn
AS
BEGIN
DECLARE
	   @idZamowienia as int,
	   @rodzaj as varchar (31),
	   @dataStworzeniaZamowienia as datetime,
	   @terminZamowienia as datetime,
	   @nazwaStatusu as varchar (26), 
	   @idPracownika as int, 
	   @imieNazwisko as varchar (100),
	   @zmiana as varchar (16),
	   @nazwaMaszyny as varchar (61)=null,
	   @data as datetime
	   SET @data = getdate()

DECLARE obsluga_maszyn_kursor CURSOR FOR
select idZamowienia,rodzaj,dataStworzeniaZamowienia,terminZamowienia,nazwaStatusu,idPracownika,imie +' ' + nazwisko,zmiana, ISNULL(nazwaMaszyny,'Brak') from per_obsl_zam

OPEN obsluga_maszyn_kursor;
FETCH NEXT FROM  obsluga_maszyn_kursor INTO @idZamowienia,@rodzaj,@dataStworzeniaZamowienia,@terminZamowienia,@nazwaStatusu,@idPracownika,@imieNazwisko,@zmiana,@nazwaMaszyny;
print '     raport wykonano: '   + CAST(@data As nvarchar);
WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT 

		'     idZamowienia: ' + CAST(@idZamowienia as nvarchar) +
		'     rodzaj: ' + CAST(@rodzaj As nvarchar(31)) +
		'     data stworzenia Zamowienia: ' + CAST(@dataStworzeniaZamowienia AS nvarchar) +
		'     termin zamowienia: ' + CAST(@terminZamowienia AS nvarchar) +
		'     nazwa statusu: ' + CAST(@nazwaStatusu As nvarchar(26)) +
		'     idPracownika ' + CAST(@idPracownika As nvarchar) +
		'     imie i nazwisko: ' + CAST(@imieNazwisko As nvarchar(100))+
		'     zmiana: ' + CAST(@zmiana As nvarchar(16))+
		'     nazwa maszyny: ' + CAST(@nazwaMaszyny As nvarchar(61));

		FETCH NEXT FROM  obsluga_maszyn_kursor INTO @idZamowienia,@rodzaj,@dataStworzeniaZamowienia,@terminZamowienia,@nazwaStatusu,@idPracownika,@imieNazwisko,@zmiana,@nazwaMaszyny;
		END;

CLOSE obsluga_maszyn_kursor
DEALLOCATE obsluga_maszyn_kursor
END;
GO
