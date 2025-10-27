--3. Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to zadanie? Zapewnij te warunki.

INSERT INTO public.obiekty (nazwa, geometria)
SELECT 
    'obiekt4_pol',
    ST_MakePolygon(
    	ST_AddPoint(
        	ST_LineMerge(geometria),        
        	ST_StartPoint(ST_LineMerge(geometria)))
    )
FROM obiekty 
WHERE nazwa = 'obiekt4';