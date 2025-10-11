-- m) Policz sumę wszystkich wynagrodzeń. 
SELECT
    SUM(pen.kwota) + COALESCE(SUM(pr.kwota), 0) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie w
LEFT JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
LEFT JOIN ksiegowosc.premie pr ON w.id_premii = pr.id_premii;