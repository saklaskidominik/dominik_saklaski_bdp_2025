-- 8. Znajdź punkty przecięcia torów kolejowych (RAILWAYS) z ciekami (WATER_LINES). Zapisz znalezioną geometrię do osobnej tabeli o nazwie ‘T2019_KAR_BRIDGES’.

UPDATE t2019_kar_railways
SET geom = ST_SetSRID(geom, 4326);

UPDATE t2019_kar_water_lines
SET geom = ST_SetSRID(geom, 4326);


CREATE TABLE t2019_kar_bridges AS
SELECT 
    ST_Intersection(
        ST_Transform(r.geom, 3068),
        ST_Transform(w.geom, 3068)
    ) AS geom
FROM t2019_kar_railways r
JOIN t2019_kar_water_lines w
  ON ST_Intersects(
        ST_Transform(r.geom, 3068),
        ST_Transform(w.geom, 3068)
     )
WHERE GeometryType(
        ST_Intersection(
            ST_Transform(r.geom, 3068),
            ST_Transform(w.geom, 3068)
        )
     ) = 'POINT';


SELECT COUNT(*) AS liczba_mostow FROM t2019_kar_bridges;