-- (p) h) Usuń wszystkich pracowników mających pensję mniejszą niż 1200 zł.
DELETE FROM ksiegowosc.wynagrodzenie
WHERE id_pensji IN (
    SELECT id_pensji
    FROM ksiegowosc.pensja
    WHERE kwota < 1200
);