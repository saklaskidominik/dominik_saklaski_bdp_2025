--3. Utwórz nową tabelę o nazwie ‘streets_reprojected’, która zawierać będzie dane z tabeli T2019_KAR_STREETS przetransformowane do układu współrzędnych DHDN.Berlin/Cassini.
ALTER TABLE t2019_kar_streets
ALTER COLUMN geom TYPE geometry(MULTILINESTRING, 25832)
USING ST_SetSRID(geom, 25832);

CREATE TABLE streets_reprojected AS
SELECT 
    gid,
    link_id,
    st_name,
    ref_in_id,
    nref_in_id,
    func_class,
    speed_cat,
    fr_speed_l,
    to_speed_l,
    dir_travel,
    ST_Transform(geom, 3068) AS geom  -- transformacja do DHDN / Berlin Cassini
FROM t2019_kar_streets;
