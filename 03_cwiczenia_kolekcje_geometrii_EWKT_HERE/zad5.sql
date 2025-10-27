-- 5. Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone wokół obiektów nie zawierających łuków.
SELECT 
    SUM(ST_Area(ST_Buffer(geometria, 5))) AS total_buffer_area
FROM obiekty
WHERE GeometryType(geometria) NOT IN ('CIRCULARSTRING', 'COMPOUNDCURVE', 'CURVEPOLYGON');