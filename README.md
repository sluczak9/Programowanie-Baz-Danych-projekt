# Programowanie-Baz-Danych-projekt

<h2>Projekt dwuosobowy na studia na przedmiot Programowanie i projektowanie baz danych</h2>

Spis treści
<div>
<div>1. Temat</div>
<div>&nbsp; &nbsp; 1.1 Założenie</div>
<div>&nbsp; &nbsp; 1.2 Cel</div>
<div>&nbsp; &nbsp; 1.3 Funkcje systemu:</div>
<div>&nbsp; &nbsp; 1.4 Przetwarzane dane:</div>
<div>&nbsp; &nbsp; 1.5 Dokumenty:</div>
<div>&nbsp; &nbsp; 1.6 Opis element&oacute;w programistycznych:</div>
<div>2. Model pojęciowy</div>
<div>3. Model logiczny</div>
<div>4. Model fizyczny</div>
<div>&nbsp; &nbsp; 4.1 Model fizyczny Visio:</div>
<div>&nbsp; &nbsp; 4.2 MS SQL Server :</div>
<div>&nbsp; &nbsp; 4.3 Oracle :</div>
<div>5. Opis encji</div>
<div>6. Ograniczenia (constraints)</div>
<div>7.Procedury</div>
<div>&nbsp; &nbsp; 7.1 Procedury dodawania:</div>
<div>&nbsp; &nbsp; 7.2 Procedury edycji</div>
<div>8. Perspektywy</div>
<div>9. Raporty</div>
<div>10. Triggery</div>
</div>


<h2>1.	Temat</h2>

<h3>1.1 Założenie</h3>
Firma magazynowa udostępnia swoim klientom część magazynu oraz przyjmuje od nich zamówienia na dostawę lub wysyłkę. Zamówienia realizowane są przez firmy kurierskie lub transportowe, m.in. od firmy transportowej Michała Królikowskiego i Kamila Karasiewicza. Z którymi bazy są połączone.

<h3>1.2 Cel</h3>
Celem systemu jest usprawnienie pracy i poprawienie wydajności w magazynie. Magazyn wynajmuje przestrzeń dla różnych sklepów stacjonarny i internetowych. System ma pomóc w katalogowaniu produktów, dostawców, pracowników i o ile jest to możliwe zniwelować prawdopodobieństwo pomyłki przy wysyłce.

<h3>1.3 Funkcje systemu:</h3>
<ul>
<li>Katalogowanie towarów</li>
<li>Wskazywanie odpowiedniej lokalizacji dla towarów</li>
<li>Rejestr przyjmowanych/wysyłanych paczek:</li>
<ul>
<li>Który pracownik rozładowuje / załaduje zamówienia</li>
<li>Która firma jest odpowiedzialna za transport</li>
</ul>
</ul>

<h3>1.4 Przetwarzane dane:</h3>
<ul>
<li>Dane osobowe pracowników</li>
<li>Adresy dostaw / wysyłki  </li>
<li>Dane o firmie przewozowej </li>
<li>Dane o przewozie </li>
<li>Dane o towarach</li>
</ul>

<h3>1.5 Dokumenty:</h3>
<ul>
  
<p>Wejścia:</p>
  
<li>Informacje o dostawie </li>
<li>Stan magazynowy</li>
<li>Informacje o pracownikach</li>

  <p>Wyjścia:</p>


<li>Informacje o dostawach</li>
<li>Informacje o wysyłce</li>
</ul>

<h3>1.6 Opis elementów programistycznych:</h3>
Opis elementów programistycznych, które planujemy wykonać w ramach projektu.
Planujemy żeby system dla magazynu realizował następujące akcje:
<ul>
<li>Sortowanie przesyłek po dacie które ułatwi sprawdzanie w jakich dniach one odbywają się
<li>Sortowanie towarów po producentach rodzaju towarów
<li>Sortowanie towarów po rodzaju towarów
<li>Dodawanie oraz edycja pracowników oraz określanie ich stanowisk i maszyn
<li>Dodawanie oraz edycja maszyn np. wózki widłowe oraz określanie ich stanu sprawności 
<li>Ustalanie pensji oraz premii dla pracowników wraz z edycją
<li>Ustalanie godziny i daty dostaw/wysyłek oraz podgląd firm transportowych 
<li>Ustalanie sektora oraz półki dla towarów 
<li>Rejestracje przyjmowanych/wysyłanych paczek
<li>Generowanie cyklicznych raportów o stanie magazynowym 
<li>Generowanie cyklicznych raportów o pracownikach
<li>Generowanie cyklicznych raportów o wysyłkach oraz dostawach
<li>Generowanie cyklicznych raportów o stanie sprawności maszyn magazynowych
<li>Generowanie raportów TO10 pracowników którzy otrzymali największe Premie
<li>Rejestracja nowego zamówienia
<li>Dodanie towaru do zamówienia towarów
<li>Zmiana statusu zamówienia na zamówienie Zrealizowane, niezrealizowane lub w realizacji</li>
</ul>

<h2>2. Model pojęciowy</h2>
<img src='https://user-images.githubusercontent.com/66882674/161441723-3a6d929f-ad02-45c3-af00-f934a6e2f699.png'>

<h2>3. Model logiczny</h2>
<img src='https://user-images.githubusercontent.com/66882674/161441798-5973ae3a-2128-4593-b560-9b68423249fe.png'>

<h2>4. Model fizyczny</h2>
<img src='https://user-images.githubusercontent.com/66882674/161441904-e146de11-cfae-4be2-a5e3-a9dc090df93c.JPG'>

<h2>5. Opis encji</h2>

<table style="border-collapse: collapse; border: none;">
<tbody>
<tr>
<td style="width: 453.1pt; border: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" colspan="3" width="604">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="font-size: 18.0pt; color: black;">Magazyn Lupa</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Encja</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Atrybut</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Dziedzina</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="5" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ADRESY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idAdresu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;">&nbsp;</p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ulicac</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Ulica</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nrDomu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">numer domu</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nrMieszkania</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">numer mieszkania</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">miasto</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nazwa miasta</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="4" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">FIRMY TRANSPORTOWE</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdFirmyTransportowej</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;">&nbsp;</p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nazwaFirmyTransportowa</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Nazwa firmy transportowej</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">rodzajFirmy</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Rodzaje Firmy Transportowej</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">adresFirmy</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">adres gdzie znajduje się firma</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="5" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">MASZYNY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idMaszyny</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nazwaMaszyny</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nazwa danej maszyny</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">sprawna</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">TAK/NIE</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idRodzaju</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Rodzaje Maszyn</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPrzeglądu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Przeglądy</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">OBSŁUGA ZM&Oacute;WIEŃ</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPracownika</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Pracownika</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idZm&oacute;wienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Zam&oacute;wienia</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="4" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">POZYCJE ZAMOWIEŃ</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPozycjaZam&oacute;wień</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idZamowienie</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Zam&oacute;wienia</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idTowaru</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Towar</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ilosc</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ilość danego towaru</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="8" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">PRACOWNICY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPracownika</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">imię</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Imię pracownika</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nazwisko</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Nazwisko pracownika</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idAdresu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Adresy</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Stanowisko</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Stanowiska</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idZmiany</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Zmiany</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">pensja</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Pensja pracownika podanna w brutto</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">plec</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">M/K</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="4" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">PREMIE</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdPremii</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">kwota</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">kwota przyznana pracownikowi</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">dataWystawienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">data</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPracownika</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Pracownika</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="3" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">PRZEGLĄDY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPrzeglądu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">dataPrzeglądu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">data ostniego przeglądu</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ważnośćPrzeglądu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Tak/Nie</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">REGAŁY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdRegału</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">regał</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">1&hellip;20</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">RODZAJ FIRMY TRANSPORTOWEJ</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdRodzajFirmy</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">rodzajFirmy</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">kurierska, transportowa</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="3" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">RODZAJE MASZYN</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idRodzaju</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">rodzajMaszyny</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">w&oacute;zek widłowy, w&oacute;zek podnośnikowy czołowy, podest ruchomy nożycowy</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">opis</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">zawiera kr&oacute;tki opis danej maszyny</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">RODZAJE TOWAR&Oacute;W</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdRodzajTowaru</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">rodzajTowaru</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">AGD, RTV, budowlane, produkty ogrodnicze, częśći samochodowe, odzież, obuwie, ceramika</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">RODZAJE ZAM&Oacute;WIEŃ</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idRodzaju</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">RodzajZam&oacute;wienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Dostawa, Wysyłka</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">SEKTORY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdSektora</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">sektor</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">A, B, C, D&hellip;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">STANOWISKA</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdStanowiska</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Numer odpowieadający stanowisku</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">stanowisko</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Kierownik magzynu, Kierwonik zmiany, Specjalista ds. BHP, Brygadzista, Operator w&oacute;zka, Magazynier, Pakowacz, Konserwator powierzchni plaskich</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">STATUSY ZAM&Oacute;WIENIA</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idZam&oacute;wienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">StatusZam&oacute;wienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Zrealizowane, niezrealizowane, w realizacji</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="6" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">TOWARY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idTowaru</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">towar</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">nazwa danego towaru</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">opis</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">zawiera kr&oacute;tki opis danego towaru</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ilośćSztuk</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ilość danego towaru</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">marka</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">marka firmy</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idRodzajuTowaru</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do RodzajeTowary</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="4" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">TOWAR NA STANIE</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idTowaruNaStanie</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">iloscSztuk</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ilość danego towaru</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdRegału</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Regału</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idTowaru</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Towaru</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">TRANSPORTY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idZamowienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Zam&oacute;wienia</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">IdFirmyTransportowej</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Firmy transportowej</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">UZYWANE MASZYNY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idMaszyny</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesieni do Maszyny</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPracownika</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Pracownika</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="7" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ZAM&Oacute;WIENIA</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idZam&oacute;wienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">terminZam&oacute;wienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">data wykonania zam&oacute;wienia</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">dataStworzeniaZamowienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">data swtorzenia zam&oacute;wienia</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idTransportu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Transportu</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idPracownika</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Pracownika</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idRodzajuZamowienia</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odnieiesienie do Rodzaju zam&oacute;wienia</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idStatusu</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Odniesienie do Statusu Zamowienia</span></p>
</td>
</tr>
<tr>
<td style="width: 151.0pt; border: solid windowtext 1.0pt; border-top: none; padding: 0cm 5.4pt 0cm 5.4pt;" rowspan="2" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">ZMIANY</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">idZmiany</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">zmiana</span></p>
</td>
<td style="width: 151.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0cm 5.4pt 0cm 5.4pt;" width="201">
<p style="margin-bottom: 0cm; text-align: center; line-height: normal;"><span style="color: black;">Poranna, Popołudniowa</span></p>
</td>
</tr>
</tbody>
</table>

<h2>6. Ograniczenia (constraints)</h2>
<ul>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>Na encji Premie, w kolumnie dataWystawienia, data wpisywana jest automatycznie przez funkcję getdate()</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>Na encji Przeglądy, w kolumnie dataPrzegladu, data wpisywana jest automatycznie przez funkcję getdate()</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>Na encji Zamowienia, w kolumnie dataStworzeniaZamowienia, data wpisywana jest automatycznie przez funkcję getdate()</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>Check na encji Maszyny, w kolumnie sprawna można wpisać tylko słowa &bdquo;TAK&rdquo; lub &bdquo;NIE&rdquo;</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>Check na encji Sektory, w kolumnie sektor można wpisać nazwę sektoru od &bdquo;A&rdquo; do &bdquo;Z&rdquo;</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>Check na encji Plcie, w kolumnie plec można wpisać literę &bdquo;M&rdquo; lub &bdquo;K&rdquo;</li>
</ul>
  
<h2>7 Procedury</h2>

<h3>7.1 Procedury dodawania:</h3>

<ul>
<li>dodajAdres (@ulica,@nrdomu,@nrMieszkania,@miasto,@idAdresu(‘’)) – powoduje dodanie adresu do bazy.</li>
Numery błędów:
<ul>
<li>50001 – Nazwa ulicy musi składać się od 3 do 40 znaków</li> 
<li>50002 – Numer domu może składać się maksymalnie z liczby 3 cyfrowej</li> 
<li>50003 - Numer mieszjania może składać się maksymalnie z liczby 3 cyfrowej</li> 
<li>50004 – Nazwa miasta musi składać się od 3 do 40 znaków</li>
</ul>

<li>dodajFirmeTransportowa (@nazwaFirmy,@idRodzaju,@idFirmy,@idFirmy(‘’)) – powoduje dodanie firmy do bazy.</li> 
Numery błędów:
<ul>
<li>50001 – Nazwa firmy musi składać od 3 do 50 liter</li> 
<li>50002 – Musi istnieć taki rodzaj firmy transportowej</li>
</ul>

<li>dodajMaszyne (@nazwaMaszyny,@sprawna,@idRodzaju,@idMaszyny(‘’)) – powoduje dodanie maszyny do bazy.</li>  
Numery błędów:
<ul>
<li>50001 – Nazwa maszyny musi mieć od 3 do 60 znaków</li> 
<li>50002 – Sprawność oznaczamy poprzez słowo „TAK” lub „NIE”</li> 
<li>50003 – Musi istnieć taki rodzaj maszyny</li>
</ul>

<li>dodajObslugeZam (@idPracownika,@idZamowienia) – powoduje dodanie obluge zamówienia.</li>
Numery błędów:
<ul>
<li>50001 – Musi istnieć taki pracownik</li> 
<li>50002 – Musi istnieć takie zamówienie</li>
</ul>

<li>dodajPozycjeZamowien (@idZamowienia,@idTowaru,@ilosc,@idPozZam(‘’)) – powoduje dodanie pozycje zamówień.</li> 
Numery błędów:
<ul>
<li>50001 – Musi istnieć takie zamówienie
<li>50002 – Musi istnieć taki towar 
<li>50003 – Ilość towarów</li>
<li>50004 – Ilość towarów nie może być mniejsza od 1 oraz większa niż limit towarów na stanie
</ul>

<li>dodajPracownika(@imie,@nazwisko,@idAdresu,@idStanowiska,@idZmiany,@pensja,@plec,@idPracownika) – powoduje dodanie pracownika do bazy.</li>
Numery błędów:
<ul>
<li>50001 – Imię musi mieć od 2 do 4 znaków</li>
<li>50002 – Nazwisko musi mieć od 2 do 40 znaków</li>
<li>50003 – Musi istnieć taki adres</li>
<li>50004 – Musi istnieć takie stanowisko</li> 
<li>50005 – Musi istnieć taka zmiana</li>
<li>50006 – Pensja musi wynosić od 1800 do 20000 zł</li>
<li>50007 – Płeć oznaczana jest jako „K” lub „M”</li>
</ul>

<li>dodajPracownika(@kwota,@idPracownika,@idPremii) – powoduje dodanie pracownika do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Kwota nie możę być mniejsza od 10 zł oraz większa od 10 000</li>
<li>50002 – Musi istnieć taki pracownik</li>
</ul>

<li>dodajPrzeglady(@waznoscPrzegladu(RRRR-MM-DD 00:00:00),@idMaszyny,@idPrzegladu(‘’)) – powoduje dodanie przeglądu do bazy.</li>
Numery błądu:

<ul>
<li>50001 – Termin ważności zamówienia nie może być wyznaczony na datę wcześniejszą od dzisiejszej</li>
<li>50002 – Musi istnieć taka maszyna 
</ul>

<li>dodajRegaly(@regal,@idSektoru,@idRegalu(‘’)) – powoduje dodanie regału do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Nazwa regału musi składać się od 1 do 3 znaków</li>
<li>50002 – Musi istnieć taki sektor</li>
</ul>

<li>dodajRodzajeTowarow(@rodzajTowaru,@idRodzaju(‘’)) – powoduje dodanie rodzaju towaru.</li>
Numery błędów:

<ul>
<li>50001 – Nazwa firmy musi składać się od 2 do 30 znaków</li>
</ul>

<li>dodajRodzajZamowien(@rodzaj,@idRodzaju(‘’)) – powoduje dodanie rodzaju do bazy</li>
Numery błędów:

<ul>
<li>50001- Nazwa rodzaju zamówień musi składać się od 2 do 30 znaków</li>
</ul>

<li>dodajRodzajFirmyTransp(@rodzaj,@idRodzaju(‘’)) – powoduje dodanie rodzaju firmy do bazy.</li>
Numery błędów:

<ul>
<li>50001- Nazwa rodzaju firmy transportowej musi składać się od 3 do 30 znaków.</li>
</ul>

<li>dodajRodzajMaszyny(@rodzajMaszyny,@opis,@idRodzaju(‘’)) – powoduje dodanie rodzaju maszyny do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Nazwa firmy musi składać się od 3 do 50 znaków</li>
<li>50002- Opis musi składać się od 3 do 250 znaków</li>
</ul>
 
<li>dodajSektor(@sektor,@idSektora(‘’)) – powoduje dodanie sektora do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Nazwa sektora musi składać się z 1 znaku</li>
</ul>

<li>dodajStanowisko(@stanowisko,@idStanowiska(‘’))-powoduje dodanie stanowiska do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Nazwa stanowiska musi składać się od 3 do 40 znaków</li>
</ul>

<li>dodajStatusyZam(@nazwaStatusu,@idStatusu(‘’)) – powoduje dodanie statusu do bazy.</li>
Numery błędów:

<ul>
<li>50001- Nazwa rodzaju zamówień musi składać się od 2 do 25 znaków</li>
</ul>

<li>dodajTowary(@towar,@opis,@ilośćSztuk,@marka,@idRodzaju,@idTowaru(‘’)) – powoduje dodanie towaru do bazy.</li>
Numery błędów: 

<ul>
<li>50001 - Nazwa towaru musi składać się od 3 do 25 znaków</li>
<li>50002 – Opis nie może być pusty oraz musi składać się maksymalnie z 150 znaków</li>
<li>50003 – Ilość sztuk nie może być mniejsza od 1 oraz większa niż 10 tysięcy</li>
<li>50004 – Pole marka nie może być puste oraz musi składać się z maksymalnie z 30 znaków </li>
<li>50005 – Musi istnieć taki rodzaj towaru</li>
</ul>

<li>dodajTowaryNaStanie(@iloscSztuk,@idRegalu,@idTowaru,@idTowaruNaStanie(‘’)) – powoduje dodanie towaru na stanie do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Ilość sztuk nie może być mniejsza od 1 oraz większa niż 5 tysięcy</li>
<li>50002 – Musi istnieć taki regał</li>
<li>50003 – Musi istnieć taki towar</li>
</ul>

<li>dodajTransporty(@idZmowienia,@idFirmy) – powoduje dodanie transportu do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Musi istnieć takie zamówienie</li>
<li>50002 – Musi istnieć taka firma</li>
</ul>

<li>dodajUzycieMaszyny(@idMaszyny,@idPracownika) – powoduje dodanie używanych  maszyn do bazy.</li>
Numery błędów:

<ul>
<li>50001 – Musi istnieć taka maszyna
<li>50002 – Musi istnieć taki pracownik
</ul>

<li>dodajZamowienia(@terminZamowienia,@idRodzajuZamowien,@idStatusu,@idZamowienia(‘’))</li>
Numery błędów:
<ul>
<li>50001 – Termin zamówienia nie może być wyznaczony na datę wcześniejszą od dzisiejszej</li>
<li>50002 – Musi istnieć taki rodzaj zamówień</li>
<li>50003 – Musi istnieć taki status</li>
</ul>

<li>dodajZmiany(@zmiana,@idZmiany(‘’)) – powoduje dodanie zmiany do bazy.</li>
Numery błędów:
<ul>
<li>50001 – Nazwa zmiany musi składać się od 1 do 15 znaków</li>
</ul>
</ul>

<ul>
<li>edytujAdres (@idAdresu,@ulica,@nrDomu,@nrMieszkania,@miasto) – powoduje edycje adresu
<li>edytujFirmeTransportowa(@idFirmy,@nazwa,@idRodzaju) – powoduje edycje adresu
<li>edytujMaszyne(@idMaszyny,@nazwaMaszyny,@sprawa,@idRodzaju) – powoduje edycje maszyny
<li>edytujPracownikow(@idPracownika,@imie,@nazwisko,@idAdresu,@idStanowisko,@idZmiany,@pensja,@plec) – powoduje edycje pracownika
<li>edytujTowary(@idTowaru,@towar,@opis,@iloscSztuk,@idRodzujuTowaru) - powoduje edycje towaru
</ul>

<h3>7.2 Procedury edycji</h3>

<ul>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>edytujAdres (@idAdresu,@ulica,@nrDomu,@nrMieszkania,@miasto) &ndash; powoduje edycje wybranych parametr&oacute;w
<ul>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Musi istnieć taki adres</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Nazwa ulicy musi składać się od 3 do 40 znak&oacute;w</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50002 &ndash; Numer domu może składać się maksymalnie z liczby 3 cyfrowej</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50003 - Numer mieszjania może składać się maksymalnie z liczby 3 cyfrowej</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50004 &ndash; Nazwa miasta musi składać się od 3 do 40 znak&oacute;w</li>
</ul>
</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>edytujFirmeTransportowa(@idFirmy,@nazwa,@idRodzaju) &ndash; powoduje edycje wybranych parametr&oacute;w, w przypadku parametru kt&oacute;rego nie chcemy edytować, wpisujemy null<br />Numery błęd&oacute;w:
<ul>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Musi istnieć taka firma transportowa</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50002 &ndash; Nazwa firmy musi składać od 3 do 50 liter</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50003 &ndash; Musi istnieć taki rodzaj firmy transportowej</li>
</ul>
</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>edytujMaszyne(@idMaszyny,@nazwaMaszyny,@sprawa,@idRodzaju) &ndash; powoduje edycje wybranych parametr&oacute;w<br />Numery błęd&oacute;w:
<ul>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Musi taka maszyna</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50002 - Nazwa maszyny musi mieć od 3 do 60 znak&oacute;w</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50003 &ndash; Sprawność oznaczamy poprzez słowo &bdquo;TAK&rdquo; lub &bdquo;NIE&rdquo;</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50004 &ndash; Musi istnieć taki rodzaj maszyny</li>
</ul>
</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>edytujPracownikow(@idPracownika,@imie,@nazwisko,@idAdresu,@idStanowisko,@idZmiany,@pensja,@plec) &ndash; powoduje edycje wybranych parametr&oacute;w, w przypadku parametru kt&oacute;rego nie chcemy edytować, wpisujemy null<br />Numery błęd&oacute;w:
<ul>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Musi istnieć taki pracownik</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50002 &ndash; Imię musi mieć od 2 do 4 znak&oacute;w</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50003 &ndash; Nazwisko musi mieć od 2 do 40 znak&oacute;w</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50004 &ndash; Musi istnieć taki adres</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50005 &ndash; Musi istnieć takie stanowisko</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50006 &ndash; Musi istnieć taka zmiana</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50006 &ndash; Pensja musi wynosić od 1800 do 20000 zł</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50008 &ndash; Płeć oznaczana jest jako &bdquo;K&rdquo; lub &bdquo;M&rdquo;</li>
</ul>
</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>edytujTowary(@idTowaru,@towar,@opis,@iloscSztuk,@idRodzujuTowaru) - powoduje edycje wybranych parametr&oacute;w, w przypadku parametru kt&oacute;rego nie chcemy edytować, wpisujemy null<br />Numery błęd&oacute;w:
<ul>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Musi istnieć taki towar</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50002 - Nazwa towaru musi składać się od 3 do 25 znak&oacute;w</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50003 &ndash; Opis nie może być pusty oraz musi składać się maksymalnie z 150 znak&oacute;w</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50004 &ndash; Ilość sztuk nie może być mniejsza od 1 oraz większa niż 10 tysięcy</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50005 &ndash; Pole marka nie może być puste oraz musi składać się z maksymalnie z 30 znak&oacute;w</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50006 &ndash; Musi istnieć taki rodzaj towaru</li>
</ul>
</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>edytujStatusZam(@idZamowienia,@idStatusu) &ndash; Powoduje edycję statusu zam&oacute;wienia<br />Numery błęd&oacute;w:
<ul>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Musi istnieć takie zam&oacute;wienie</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50002 &ndash; Musi istnieć taki status</li>
</ul>
</li>
<li><span style="font-family: Symbol;"><span style="font: 7.0pt 'Times New Roman';"> </span></span>edutujTerminZamowienia(@idZamowienia,@terminZamowienia) &ndash; Powoduje edycje terminu zam&oacute;wienia<br />Numery błęd&oacute;w:
<ul>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50001 &ndash; Musi istnieć takie zam&oacute;wienie</li>
<li><span style="font-family: 'Courier New';"><span style="font: 7.0pt 'Times New Roman';"> </span></span>50002 &ndash; Termin zam&oacute;wienia nie może być wyznaczony na datę wcześniejszą od dzisiejszej</li>
</ul>
</li>
</ul>

<h2>8. Perspektywy</h2>
<ul>
<li>per_firm_rodz </li>
<li>per_obsl_zam </li>
<li>per_prac_maszyny </li>
<li>per_tow_stan </li>
<li>per_pracownicy_adresy</li>
<li>per_pracownicy</li>
<li>per_stan_maszyn</li>
<li>per_tow_stan</li>
<li>per_zam_po_dacie</li>
 </ul>

<h2>9. Raporty</h2>
<ul>
<li>raportObslugiZamowien – raport generujący listę zamówień oraz osób które pracowały przy tym zamówieniu</li>
<li>raportPracownikow_kursor – Raport pracowników, za pomocą którego można wyświetlić wszystkich pracowników, ale również pracowników z wybranej zmiany</li>
<li>raportSortTowar_kursor – raport stanu towarów posortowanych po rodzaju towarów</li>
<li>raportSortTowarNaStan_kursor – raport stanu towarów na magazynie posortowanych po rodzaju towarów</li>
<li>raportStanuMaszyn – raport pokazujący aktualny stan maszyn</li>
<li>raportTOP10PremiiKursor – raport generujący 10 największych premii otrzymanych przez pracowników</li>
<li>raportZamowienSortData – raport generujący listę zamówień wraz z towarami oraz ich ilością, posrtowany po terminieZamowien</li>
</ul>
<h2>10. Triggery</h2>
<ul>
<li>Tr_zmiana_ilosci – zmniejsza ilość towarów możliwych do zamówienia oraz zwiększa ilość towarów na stanie o podaną ilość w przypadku dostawy. W przypadku wysyłki zmniejsza ilość towarów na stanie o podaną ilość.</li
  </ul>

