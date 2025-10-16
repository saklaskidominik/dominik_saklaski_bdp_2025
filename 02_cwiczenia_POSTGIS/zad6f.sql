-- 6f) Wypisz pole powierzchni tej części budynku BuildingC, która znajduje się w odległości większej niż 0.5 od budynku BuildingB.
SELECT 
    ST_Area(
        ST_Difference(
            b1.geometry,
            ST_Buffer(b2.geometry, 0.5)
        )
    ) AS area_outside_buffer
FROM buildings b1, buildings b2
WHERE b1.name = 'BuildingC' AND b2.name = 'BuildingB';

