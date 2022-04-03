CREATE TABLE Adresy(
	idAdresu INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	ulica varchar(40) NOT NULL,
	nrDomu varchar(10) NOT NULL,
	nrMieszkania varchar(3) NULL,
	miasto varchar(40) NOT NULL,
    CONSTRAINT PK__Adresy PRIMARY KEY (idAdresu)
    );

	CREATE TABLE Zmiany(
	idZmiany int GENERATED ALWAYS AS IDENTITY NOT NULL,
	zmiana varchar(15) NOT NULL,
    CONSTRAINT PK__Zmiany PRIMARY KEY (idZmiany));

	
	CREATE TABLE Pracownicy (
	idPracownika INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	imie VARCHAR2(40) NOT NULL,
	nazwisko VARCHAR2(40) NOT NULL,
	idAdresu number(10),
    FOREIGN KEY (idAdresu) REFERENCES Adresy(idAdresu),	
    idZmiany int NOT NULL,
    FOREIGN KEY (idZmiany) REFERENCES Zmiany(idZmiany),
    idStanowiska int NOT NULL,
    FOREIGN KEY (idStanowiska) REFERENCES Stanowiska(idStanowiska),
	pensja float NOT NULL,
    plec varchar(1) NOT NULL
    );

	CREATE TABLE Premie(
	idPremii INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Premie PRIMARY KEY (idPremii),
	kwota float NOT NULL,
	dataWystawienia TIMESTAMP NOT NULL,
	idPracownika INT NOT NULL,
    FOREIGN KEY (idPracownika) REFERENCES Pracownicy(idPracownika));


	CREATE TABLE Rodzaje_Maszyn(
	idRodzaju INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Rodzaje_Maszyn PRIMARY KEY (idrodzaju),
	rodzajMaszyny varchar(60) NOT NULL,
	opis varchar(250) NOT NULL);

	CREATE TABLE Maszyny(
	idMaszyny INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Maszyny PRIMARY KEY (idMaszyny),
	nazwaMaszyny varchar(60) NOT NULL,
	sprawna varchar(3) NOT NULL,
	idRodzaju int NOT NULL,
    FOREIGN KEY (idRodzaju) REFERENCES Rodzaje_Maszyn(idRodzaju));
	-------------
	CREATE TABLE Przeglady(
	idPrzegladu INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Przeglady PRIMARY KEY (idPrzegladu),
	waznoscPrzegladu TIMESTAMP NOT NULL,
	dataPrzegladu TIMESTAMP NOT NULL,
	idMaszyny int NOT NULL,
    FOREIGN KEY (idMaszyny) REFERENCES Maszyny(idMaszyny));
	-------------

	CREATE TABLE Uzywanie_Maszyn(
	idMaszyny int NOT NULL,
	idPracownika int NOT NULL,
    FOREIGN KEY (idMaszyny) REFERENCES Maszyny(idMaszyny),
    FOREIGN KEY (idPracownika) REFERENCES Pracownicy(idPracownika));


	CREATE TABLE Obsluga_Zamowien(
	idPracownika int NOT NULL,
	idZamowienia int NOT NULL,
     FOREIGN KEY (idPracownika) REFERENCES Pracownicy(idPracownika),
      FOREIGN KEY (idZamowienia) REFERENCES Zamowienia(idZamowienia));

	  CREATE TABLE Statusy_Zamowienia(
	idStatusu INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Statusy_Zamowienia PRIMARY KEY (idStatusu),
	nazwaStatusu varchar(25) NOT NULL)

	CREATE TABLE Rodzaje_Firmy_Transportowej(
	idRodzaju int GENERATED ALWAYS AS IDENTITY NOT NULL,
	rodzaj varchar(30) NOT NULL,
    CONSTRAINT PK__Rodzaje_Firmy_Transportowej PRIMARY KEY (idRodzaju)
    );
-------------------------
CREATE TABLE Rodzaje_Zamowien(
	idRodzaju INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Rodzaje_Zamowien PRIMARY KEY (idRodzaju),
	rodzaj varchar(30) NOT NULL)
	----------------

CREATE TABLE Zamowienia(
	idZamowienia INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Towary_Zamowienia PRIMARY KEY (idZamowienia),
	terminZamowienia TIMESTAMP NOT NULL,
	dataStworzeniaZamowienia TIMESTAMP NOT NULL,
	idRodzajuZamowien int NOT NULL,
    FOREIGN KEY (idRodzajuZamowien) REFERENCES Rodzaje_Zamowien(idRodzaju),
	idStatusu int NOT NULL,
    FOREIGN KEY (idStatusu) REFERENCES Statusy_Zamowienia(idStatusu));
	---------
	CREATE TABLE Pozycje_Zamowien(
	idPozycjiZamowien INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Pozycje_Zamowien PRIMARY KEY (idPozycjiZamowien),
	idZamowienia int NOT NULL,
    FOREIGN KEY (idZamowienia) REFERENCES Zamowienia(idZamowienia),
	idTowaru int NOT NULL,
    FOREIGN KEY (idTowaru) REFERENCES Towary(idTowaru),
	ilosc int NOT NULL)

	---------
	CREATE TABLE Sektory(
	idSektoru INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Sektory PRIMARY KEY (idSektoru),
	sektor varchar(1) NOT NULL)
	--------------
	CREATE TABLE Regaly(
	idRegalu INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Regaly PRIMARY KEY (idRegalu),
	regal varchar(2) NOT NULL,
	idSektoru int NULL,
    FOREIGN KEY (idSektoru) REFERENCES Sektory(idSektoru));
	---------------
	
	CREATE TABLE Rodzaje_Towarow(
	idRodzaju INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Rodzaje_Towarow PRIMARY KEY (idRodzaju),
	rodzajTowaru varchar(30) NOT NULL)
	-----------------
	CREATE TABLE Towary(
	idTowaru INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Towary PRIMARY KEY (idTowaru),
	towar varchar(50) NOT NULL,
	opis varchar(150) NOT NULL,
	iloscSztuk int NOT NULL,
	marka varchar(30) NOT NULL,
	idRodzajuTowaru int NOT NULL,
    FOREIGN KEY (idRodzajuTowaru) REFERENCES Rodzaje_Towarow(idRodzaju));
	-------------
	CREATE TABLE Towary_Na_Stanie(
	idTowaruNaStanie INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    CONSTRAINT PK__Towary_Na_Stanie PRIMARY KEY (idTowaruNaStanie),
	iloscSztuk int NOT NULL,
	idRegalu int NOT NULL,
    FOREIGN KEY (idRegalu) REFERENCES Regaly(idRegalu),
	idTowaru int NOT NULL,
    FOREIGN KEY (idTowaru) REFERENCES Towary(idTowaru));
	----------
	CREATE TABLE Rodzaje_Firmy_Transportowej(
	idRodzaju int GENERATED ALWAYS AS IDENTITY NOT NULL,
	rodzaj varchar(30) NOT NULL,
    CONSTRAINT PK__Rodzaje_Firmy_Transportowej PRIMARY KEY (idRodzaju)
    );
	-----------------
	CREATE TABLE Firmy_Transportowe(
	idFirmy int GENERATED ALWAYS AS IDENTITY NOT NULL,
	nazwaFirmy varchar(50) NOT NULL,
	idRodzaju int NOT NULL,
    CONSTRAINT PK__FirmyTransportowe PRIMARY KEY (idFirmy),
    FOREIGN KEY (idRodzaju),
    REFERENCES Rodzaje_Firmy_Transportowej(idRodzaju)
	-------------
	CREATE TABLE Transporty(
	idZamowienia int NOT NULL,
	idFirmy int NOT NULL,
    FOREIGN KEY (idZamowienia) REFERENCES Zamowienia(idZamowienia),
    FOREIGN KEY (idFirmy) REFERENCES Firmy_Transportowe (idFirmy));
