--5. Zaktualizuj dane w tabeli ‘input_points’ tak, aby punkty te były w układzie współrzędnych DHDN.Berlin/Cassini.
ALTER TABLE input_points
ALTER COLUMN geom TYPE geometry;

UPDATE input_points
SET geom = ST_SetSRID(geom, 4326);

UPDATE input_points
SET geom = ST_Transform(geom, 3068);

ALTER TABLE input_points
ALTER COLUMN geom TYPE geometry(Point, 3068)
USING ST_SetSRID(geom, 3068);

SELECT ST_AsText(geom), ST_SRID(geom)
FROM input_points;