IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='raportStanuMaszyn') DROP PROC dbo.raportStanuMaszyn;
END;
GO
--Raport
CREATE PROC raportStanuMaszyn
AS
BEGIN
DECLARE
	   @idMaszyny as int,
	   @nazwaMaszyny as varchar (60),
	   @sprawna as varchar (3),
	   @rodzajMaszyny as varchar (50),
	   @data as datetime
	   SET @data = getdate()

DECLARE stan_maszyn_kursor CURSOR FOR
select * from per_stan_maszyn
order by sprawna DESC;

OPEN stan_maszyn_kursor
FETCH NEXT FROM  stan_maszyn_kursor INTO @idMaszyny,@nazwaMaszyny,@sprawna,@rodzajMaszyny;
print '     raport wykonano: '   + CAST(@data As nvarchar);
WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT 

		'     idMaszyny: ' + CAST(@idMaszyny as nvarchar) +
		'     nazwa maszyny: ' + CAST(@nazwaMaszyny As nvarchar(60)) +
		'     sprawna: ' + CAST(@sprawna as nvarchar(3))+
		'     rodzaj maszyny: ' + CAST(@rodzajMaszyny as nvarchar(50));

		FETCH NEXT FROM  stan_maszyn_kursor INTO @idMaszyny,@nazwaMaszyny,@sprawna,@rodzajMaszyny;
		END;

CLOSE stan_maszyn_kursor
DEALLOCATE stan_maszyn_kursor
END;
GO
--exec raportStanuMaszyn