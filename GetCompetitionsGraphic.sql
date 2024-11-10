USE ParalympicGames;
delimiter $$
CREATE PROCEDURE GetCompetitorsCountByCompetition()
BEGIN
    -- Contar la cantidad de competidores por cada competencia
    SELECT 
        c.ID_COMPETITION, 
        c.COMPETITIONNAME, 
        COUNT(cc.ID_COMPETITOR) AS cantidad_competidores
    FROM 
        COMPETITION c
    LEFT JOIN 
        COMPETITORXCOMPETITION cc ON c.ID_COMPETITION = cc.ID_COMPETITION
    GROUP BY 
        c.ID_COMPETITION, c.COMPETITIONNAME;
END $$

DELIMITER ;