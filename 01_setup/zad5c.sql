-- c) Wyświetl id pracowników nieposiadających premii, których płaca jest większa niż 2000. 
SELECT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
LEFT JOIN ksiegowosc.premie pr ON w.id_premii = pr.id_premii
WHERE pen.kwota > 2000 AND pr.id_premii IS NULL;