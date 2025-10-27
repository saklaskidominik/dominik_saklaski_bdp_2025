-- 1) Utwórz tabelę obiekty. W tabeli umieść nazwy i geometrie obiektów przedstawionych poniżej. 
CREATE TABLE obiekty (
    id SERIAL PRIMARY KEY,
    nazwa VARCHAR(50),
    geometria geometry -- brak SRID = układ niezdefiniowany
);


-- a. Nazwa: obiekt1
INSERT INTO obiekty (nazwa, geometria)
VALUES (
    'obiekt1',
    ST_GeomFromText(
        'COMPOUNDCURVE(
            (0 1, 1 1),                       
            CIRCULARSTRING(1 1, 2 0, 3 1),    
            CIRCULARSTRING(3 1, 4 2, 5 1),    
            (5 1, 6 1)                         
        )',
        0
    )
);

-- b. Nazwa: obiekt2
INSERT INTO obiekty (nazwa, geometria)
VALUES (
    'obiekt2',
    ST_GeomFromText(
        'CURVEPOLYGON(
            COMPOUNDCURVE(
                (10 6, 10 2),
                CIRCULARSTRING(10 2, 12 0, 14 2),
                CIRCULARSTRING(14 2, 16 4, 14 6),
                (14 6, 10 6)
            ),
            COMPOUNDCURVE(
                CIRCULARSTRING(11 2, 12 1, 13 2),
				CIRCULARSTRING(13 2, 12 3, 11 2)  
            )
        )'
    )
);
-- c. Nazwa: obiekt3
INSERT INTO obiekty (nazwa, geometria)
VALUES (
	'obiekt3',
	ST_GeomFromText(
		'CURVEPOLYGON(
			COMPOUNDCURVE(
			(7 15, 12 13),
			(12 13, 10 17),
			(10 17, 7 15)))')
);

-- d. Nazwa: obiekt4
INSERT INTO obiekty (nazwa, geometria)
VALUES (
	'obiekt4',
	ST_GeomFromText( 
		'MULTILINESTRING(
			(20.5 19.5, 22 19),
			(22 19, 26 21),
			(26 21, 25 22),
			(25 22, 27 24),
			(27 24, 25 25),
			(25 25, 20 20)	
		)')
);
-- e. Nazwa: obiekt5 (w przestrzeni 3dz)
INSERT INTO obiekty (nazwa, geometria)
VALUES (
	'obiekt5',
	ST_GeomFromText( 
		'MULTIPOINT Z((30 30 59), (38 32 234))')
);

-- f. Nazwa: obiekt6
INSERT INTO obiekty (nazwa, geometria)
VALUES (
    'obiekt6',
    ST_GeomFromText(
        'GEOMETRYCOLLECTION(
            LINESTRING (1 1, 3 2),
            POINT (4 2)
        )'
    )
);