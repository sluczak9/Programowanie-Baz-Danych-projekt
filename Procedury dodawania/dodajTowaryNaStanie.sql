IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajTowaryNaStanie') DROP PROC dbo.dodajTowaryNaStanie;
END;
GO

CREATE PROC dodajTowaryNaStanie
@iloscSztuk AS int,
@idRegalu As int,
@idTowaru As int, 
@idTowaruNaStanie AS int NULL OUTPUT
AS
BEGIN
SET NOCOUNT ON

	BEGIN TRY
		 IF @iloscSztuk < 1 OR @iloscSztuk > 5000 
		 THROW 50001, 'Iloœæ sztuk nie mo¿e byæ mniejsza od 1 oraz wiêksza ni¿ 5 tysiêcy',1;

		 IF Not Exists (select * from Regaly where idRegalu = @idRegalu) 
		 THROW 50002, 'Musi istnieæ taki rega³',1;	

		 IF Not Exists (select * from Towary where idTowaru = @idTowaru) 
		 THROW 50003, 'Musi istnieæ taki towar',1;	
		 INSERT INTO Towary_Na_Stanie(iloscSztuk, idRegalu, idTowaru) 
		VALUES (@iloscSztuk, @idRegalu, @idTowaru);
		SET @idTowaruNaStanie =(select top 1 SCOPE_IDENTITY() FROM Towary_Na_Stanie);
		select @idTowaruNaStanie as idTowaruNaStanie; 

	END TRY
	BEGIN CATCH
	THROW
	END CATCH

END

--exec dodajTowaryNaStanie 50000,1,3,''

--select * FROM Towary_Na_Stanie
--select * FROM Regaly

--exec dodajTowaryNaStanie 5001,1,90,''

---delete From Towary_Na_Stanie WHERE idTowaruNaStanie > 13;