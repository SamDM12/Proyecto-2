USE ParalympicGames;
DROP PROCEDURE GetCompetitorsByGenderAndCompetition;
DELIMITER $$

CREATE PROCEDURE GetCompetitorsByGenderAndCompetition(IN paralympicYear INT)
BEGIN
    -- Obtener el nombre de la competencia y la cantidad de competidores por género
    SELECT 
        c.COMPETITIONNAME,
        g.GENDERTYPE,
        COUNT(cmp.ID_COMPETITOR) AS cantidad_competidores
    FROM 
        COMPETITION c
    INNER JOIN 
        PARALYMPICXCOMPETITION pcx ON c.ID_COMPETITION = pcx.ID_COMPETITION
    INNER JOIN 
        PARALYMPIC p ON pcx.ID_PARALYMPIC = p.ID_PARALYMPIC
    INNER JOIN 
        COMPETITORXCOMPETITION cmp ON c.ID_COMPETITION = cmp.ID_COMPETITION
    INNER JOIN 
        COMPETITOR cpt ON cmp.ID_COMPETITOR = cpt.ID_COMPETITOR  -- CORRECCIÓN: Relacionamos COMPETITOR con PERSON a través de ID_COMPETITOR
    INNER JOIN 
        PERSON pns ON cpt.ID_PERSON = pns.ID_PERSON  -- CORRECCIÓN: Relacionamos COMPETITOR con PERSON a través de ID_PERSON
    INNER JOIN 
        GENDERTYPE g ON pns.ID_GENDERTYPE = g.ID_GENDERTYPE
    WHERE 
        p.PARALYMPICS_YEAR = paralympicYear
    GROUP BY 
        c.COMPETITIONNAME, g.GENDERTYPE
    ORDER BY 
        c.COMPETITIONNAME, g.GENDERTYPE;
END $$

DELIMITER ;