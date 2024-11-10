USE ParalympicGames;

DROP PROCEDURE IF EXISTS CountMedalsByCountry;

DELIMITER //

CREATE PROCEDURE CountMedalsByCountry(IN paralympic_year INT)
BEGIN
    SELECT 
        c.COUNTRY_NAME AS PAIS,
        SUM(CASE WHEN mt.TYPENAME = 'Oro' THEN 1 ELSE 0 END) AS ORO,
        SUM(CASE WHEN mt.TYPENAME = 'Plata' THEN 1 ELSE 0 END) AS PLATA,
        SUM(CASE WHEN mt.TYPENAME = 'Bronce' THEN 1 ELSE 0 END) AS BRONCE,
        COUNT(mxc.ID_MedalType) AS TOTAL
    FROM 
        Country c
    INNER JOIN 
        person p ON c.ID_COUNTRY = p.id_Country
    INNER JOIN 
        competitor comp ON p.ID_PERSON = comp.ID_PERSON
    INNER JOIN 
        medaltypeXCompetitorXCompetitionXParalympic mxc ON comp.ID_COMPETITOR = mxc.ID_Competitor
    INNER JOIN 
        medaltype mt ON mxc.ID_MedalType = mt.ID_MEDALTYPE
    INNER JOIN 
        paralympic pa ON mxc.ID_Paralympic = pa.ID_PARALYMPIC
    WHERE 
        pa.PARALYMPICS_YEAR = paralympic_year
    GROUP BY 
        c.COUNTRY_NAME
    ORDER BY 
        TOTAL DESC, c.COUNTRY_NAME ASC;
END //

DELIMITER ;
