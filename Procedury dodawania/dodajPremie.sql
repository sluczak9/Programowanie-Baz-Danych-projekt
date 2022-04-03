IF db_name()<>'master'
BEGIN
    IF exists (select * from sys.procedures where name='dodajPremie') DROP PROC dbo.dodajPremie;
END;
GO

CREATE PROC dodajPremie
@kwota As float,
@idPracownika As int,
@idPremii As int NULL OUTPUT

AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
    IF @kwota < 10.00 OR @kwota > 10000.00 
    THROW 50001,'kwota nie mo¿e byæ mniejsza od 10 z³ oraz wiêksza od 10 tysiêcy',1;
    IF NOT EXISTS (select * from Pracownicy where idPracownika= @idPracownika) 
    THROW 50002, 'Musi istnieæ taki pracownik',1;

        INSERT INTO Premie(kwota, idPracownika) 
        VALUES (@kwota, @idPracownika);
        SET @idPremii=(select top 1 SCOPE_IDENTITY() from Premie);
        select @idPremii as idPremii;


    END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

/*exec dodajPremie 3000, 1666,''

select * from Premie
*/
--exec dodajPremie 1000000, 0,''

--delete FROM Premie WHERE idPremii > 21