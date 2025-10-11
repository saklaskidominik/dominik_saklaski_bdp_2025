-- j) Uszereguj pracowników według pensji i premii malejąco. 
SELECT p.imie, p.nazwisko,
       SUM(pen.kwota) + COALESCE(SUM(pr.kwota), 0) AS suma_pensji_i_premii
FROM ksiegowosc.pracownicy p
LEFT JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
LEFT JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
LEFT JOIN ksiegowosc.premie pr ON w.id_premii = pr.id_premii
GROUP BY p.id_pracownika, p.imie, p.nazwisko
ORDER BY suma_pensji_i_premii DESC;