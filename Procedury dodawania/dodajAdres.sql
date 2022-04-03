IF db_name()<>'master'
BEGIN
	IF exists (select * from sys.procedures where name='dodajAdres') DROP PROC dbo.dodajAdres;
END;
GO

CREATE PROC dodajAdres
@ulica As varchar (41),
@nrDomu As varchar(11),
@nrMieszkania As varchar(4),
@miasto As varchar (41),
@idAdresu As int null OUTPUT
AS
BEGIN
    SET NOCOUNT ON
    BEGIN TRY
IF LEN(@ulica) < 3 OR LEN(@ulica) > 41 
THROW 50001,'Nazwa ulicy musi sk³adaæ siê od 3 do 40 znaków',1;

IF LEN(@nrDomu) < 1 OR LEN(@nrDomu) > 3 
THROW 50002,'Numer domu mo¿e sk³adaæ siê maksymalnie z liczby 3 cyfrowej',1;

IF LEN(@nrMieszkania) < 1 OR LEN(@nrMieszkania) > 3 
THROW 50003,'Numer mieszkania mo¿e sk³adaæ siê maksymalnie z liczby 3 cyfrowej',1;

IF LEN(@miasto) < 3 OR LEN(@miasto) > 41 
THROW 50004,'Nazwa miasta musi sk³adaæ siê od 3 do 40 znaków',1;


INSERT INTO Adresy (ulica, nrDomu, nrMieszkania, miasto)
VALUES (@ulica, @nrDomu, @nrMieszkania, @miasto)
SET @idAdresu=(select top 1 SCOPE_IDENTITY() from Adresy);
        select @idAdresu as idAdresu;
END TRY
    BEGIN CATCH
    THROW
    END CATCH
END

--exec dodajAdres qww,123,123,q,''

