-- 4. Wypełnij każdą tabelę 10. rekordami.
INSERT INTO ksiegowosc.pracownicy (id_pracownika, imie, nazwisko, adres, telefon) 
VALUES
(1, 'Jan', 'Paweł', 'ul. Papieska 2, 20-456 Wadowice', '568-896-745'),
(2, 'Bogumił', 'Łopata', 'ul. Ziemna 101, 25-956 Łódź', '533-234-009'),
(3, 'Remigiusz', 'Smith', 'ul. Zagraniczna 99, 12-543 Sosnowiec', '567-546-455'),
(4, 'Benedykt', 'Krześlak', 'ul. Drzewna 76, 30-438 Katowice', '538-876-345'),
(5, 'Adam', 'Iglasty', 'ul. Wiejska 1, 20-456 Warszawa', '468-766-555'),
(6, 'Michalina', 'Dzika', 'ul. Zagroda 45, 12-843 Szczecin', '655-096-700'),
(7, 'Nikola', 'Wójtowicz', 'ul. Zamkowa 19, 22-411 Białogród', '568-541-455'),
(8, 'Maria', 'Madej', 'ul. Dziwna 5, 41-111 Poznań', '718-906-115'),
(9, 'Magdalena', 'Sosnówka', 'ul. Skromna 55, 13-777 Łódź', '668-856-098'),
(10, 'Monika', 'Kozioł', 'ul. Kursowa 68, 23-176 Kraków', '812-996-495');

INSERT INTO ksiegowosc.godziny (id_godziny, data, liczba_godzin, id_pracownika) VALUES
(100, '2025-11-22', 100, 1),
(101, '2025-11-22', 18, 2),
(102, '2025-11-22', 170, 3),
(103, '2025-11-22', 189, 4),
(104, '2025-11-23', 90, 5),
(105, '2025-11-23', 111, 6),
(106, '2025-11-23', 192, 7),
(107, '2025-11-24', 122, 8),
(108, '2025-11-25', 15, 9),
(109, '2025-11-25', 175, 10);

INSERT INTO ksiegowosc.pensja (id_pensji, stanowisko, kwota)
VALUES
(100000, 'Dyrektor', 20500),
(200000, 'Menager projektu', 8800),
(300000, 'Menager projektu', 2000),
(400000, 'Menager projektu', 800),
(500000, 'Dyrektor marketingu', 1000),
(600000, 'Kierownik', 7000),
(700000, 'Dyrektor działu IT', 3000),
(800000, 'Kierownik', 6800),
(900000, 'Kierownik', 9300),
(1000000, 'Dyrektor ds. obsługi klienta', 8700);

INSERT INTO ksiegowosc.premie (id_premii, rodzaj, kwota)
VALUES
(1000, 'Premia za nadgodziny', 4000),
(1001, 'Premia za stanowisko', 700),
(1002, 'Premia za stanowisko', 1000),
(1003, 'Premia za stanowisko', 800),
(1004, 'Premia za stanowisko', 900),
(1005, 'Premia za stanowisko', 600),
(1006, 'Premia za stanowisko', 800),
(1007, 'Premia za stanowisko', 300),
(1008, 'Premia za stanowisko', 3400),
(1009, 'Premia za stanowisko', NULL);

INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_pensji, id_premii)
VALUES
(10000, '2025-12-01', 1, 100000, 1000),
(10001, '2025-12-01', 2, 200000, 1001),
(10002, '2025-12-01', 3, 300000, 1002),
(10003, '2025-12-01', 4, 400000, 1003),
(10004, '2025-12-01', 5, 500000, 1004),
(10005, '2025-12-01', 6, 600000, 1005),
(10006, '2025-12-01', 7, 700000, NULL),
(10007, '2025-12-01', 8, 700000, 1006),
(10008, '2025-12-01', 9, 800000, 1007),
(10009, '2025-12-01', 10, 900000, 1008);
