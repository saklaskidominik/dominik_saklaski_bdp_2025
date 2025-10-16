-- 6h) Oblicz pole powierzchni tych części budynku BuildingC i poligonu o współrzędnych (4 7, 6 7, 6 8, 4 8, 4 7), które nie są wspólne dla tych dwóch obiektów.
WITH building_c AS (
	SELECT geometry
	FROM buildings
	WHERE name = 'BuildingC'
)
SELECT ST_Area(
	ST_SymDifference(
		geometry, 
		ST_GeomFromEWKT('SRID=0;POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))')
	)
) AS area_not_common
FROM building_c;
