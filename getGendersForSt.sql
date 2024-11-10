USE ParalympicGames;
DROP PROCEDURE GETPERSONGENDERS;
DELIMITER $$

CREATE PROCEDURE GetCompetitorsByGender()
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
    GROUP BY 
        g.GENDERTYPE;
END $$

DELIMITER ;