USE ParalympicGames;
DROP PROCEDURE GetCompetitorsCountByCompetition;
delimiter $$
CREATE PROCEDURE GetCompetitorsCountByCompetition(IN paralympicYear INT)
BEGIN
    -- Contar la cantidad de competidores por cada competencia en un año específico de los Juegos Paralímpicos
    SELECT 
        c.ID_COMPETITION, 
        c.COMPETITIONNAME, 
        COUNT(cc.ID_COMPETITOR) AS cantidad_competidores
    FROM 
        COMPETITION c
    -- Unir con la tabla que relaciona competiciones y competidores
    LEFT JOIN 
        COMPETITORXCOMPETITION cc ON c.ID_COMPETITION = cc.ID_COMPETITION
    -- Unir con la tabla que relaciona competiciones y los años de los Juegos Paralímpicos
    INNER JOIN 
        PARALYMPICXCOMPETITION pcx ON c.ID_COMPETITION = pcx.ID_COMPETITION
    -- Unir con la tabla PARALYMPIC para filtrar por el año específico
    INNER JOIN 
        PARALYMPIC p ON pcx.ID_PARALYMPIC = p.ID_PARALYMPIC
    -- Filtrar por el año de los Juegos Paralímpicos
    WHERE 
        p.PARALYMPICS_YEAR = paralympicYear
    -- Agrupar por competencia
    GROUP BY 
        c.ID_COMPETITION, c.COMPETITIONNAME;
END $$

DELIMITER ;