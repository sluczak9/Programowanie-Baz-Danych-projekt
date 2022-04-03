IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='raportZamowienSortData') DROP PROC dbo.raportZamowienSortData;
END;
GO
--Raport
CREATE PROC raportZamowienSortData

AS
BEGIN
DECLARE
	@idZamowienia AS int,
	@idPozycji AS int,
	@terminZamowienia AS datetime,
	@towar AS varchar(50),
	@ilosc AS int,
	@data as datetime
	SET @data = getdate()
	
DECLARE zam_sort_data_kursor CURSOR FOR
select idZamowienia ,idPozycjiZamowien, terminZamowienia,towar,ilosc from per_zam_po_dacie order by terminZamowienia DESC;

OPEN zam_sort_data_kursor;
FETCH NEXT FROM zam_sort_data_kursor INTO @idZamowienia, @idPozycji, @terminZamowienia, @towar, @ilosc;
print '     raport wykonano: '   + CAST(@data As nvarchar);
WHILE @@FETCH_STATUS = 0
	BEGIN
			PRINT 
		'     idZamowienia ' + CAST(@idZamowienia AS nvarchar) +
		'     idPozycji: ' + CAST(@idPozycji As nvarchar) +
		'     termin zamówienia: ' + CAST(@terminZamowienia AS nvarchar) +
		'     nazwa towaru: ' + CAST(@towar AS nvarchar(50)) +
		'     ilosc: ' + CAST(@ilosc As nvarchar);
		FETCH NEXT FROM zam_sort_data_kursor INTO @idZamowienia, @idPozycji, @terminZamowienia, @towar, @ilosc;
	END;

CLOSE zam_sort_data_kursor;
DEALLOCATE zam_sort_data_kursor;
END; 
