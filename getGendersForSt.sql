USE ParalympicGames;
DROP PROCEDURE GetCompetitorsByGender;
DELIMITER $$

CREATE PROCEDURE GetCompetitorsByGender(IN paralympicYear INT)
BEGIN
    SELECT 
        g.GENDERTYPE, 
        COUNT(c.ID_COMPETITOR) AS cantidad_competidores
    FROM 
        COMPETITOR c
    JOIN 
        PERSON p ON c.ID_PERSON = p.ID_PERSON
    JOIN 
        GENDERTYPE g ON p.ID_GENDERTYPE = g.ID_GENDERTYPE
    INNER JOIN 
        COMPETITORXCOMPETITION cc ON c.ID_COMPETITOR = cc.ID_COMPETITOR  -- Relacionamos competidor con competencia
    INNER JOIN 
        PARALYMPICXCOMPETITION pcx ON cc.ID_COMPETITION = pcx.ID_COMPETITION  -- Relacionamos competencia con Paralímpico
    INNER JOIN 
        PARALYMPIC pmp ON pcx.ID_PARALYMPIC = pmp.ID_PARALYMPIC  -- Filtramos por año de los Juegos Paralímpicos
    WHERE 
        pmp.PARALYMPICS_YEAR = paralympicYear
    GROUP BY 
        g.GENDERTYPE;
END $$

DELIMITER ;