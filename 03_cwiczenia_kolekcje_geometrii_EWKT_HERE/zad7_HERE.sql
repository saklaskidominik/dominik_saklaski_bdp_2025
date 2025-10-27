-- 7. Policz, ile sklepów sportowych (‘Sporting Goods Store’) znajduje się w odległości 300 m od parków (tabela LAND_USE_A).

UPDATE t2019_kar_poi_table
SET geom = ST_SetSRID(geom, 4326);

UPDATE t2019_kar_land_use_a
SET geom = ST_SetSRID(geom, 4326);


SELECT COUNT(DISTINCT p.gid) AS liczba_sklepow_sportowych
FROM t2019_kar_poi_table p
JOIN t2019_kar_land_use_a l
  ON ST_DWithin(
       ST_Transform(p.geom, 3068),
       ST_Transform(l.geom, 3068),
       300
     )
WHERE p.type = 'Sporting Goods Store'
  AND LOWER(l.type) LIKE '%park%';
