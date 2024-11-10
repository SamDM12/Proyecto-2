USE ParalympicGames;

DROP PROCEDURE IF EXISTS ShowEventAgenda;

DELIMITER //

CREATE PROCEDURE ShowEventAgenda(
    IN in_id_competition INT,
    IN in_paralympic_year INT
)
BEGIN
    SELECT 
        comp.CompetitionName AS Competition,
        pa.PARALYMPICS_YEAR AS ParalympicYear,
        CONCAT(p.FIRSTNAME, ' ', 
               IFNULL(p.SECONDNAME, ''), ' ', 
               p.FIRSTLASTNAME, ' ', 
               IFNULL(p.SECONDLASTNAME, '')) AS CompetitorName,
        e.EventDate AS EventDate
    FROM 
        EventTable e
    INNER JOIN 
        competition comp ON e.ID_Competition = comp.ID_Competition
    INNER JOIN 
        paralympic pa ON e.ID_Paralympic = pa.ID_Paralympic
    INNER JOIN 
        competitor c ON e.ID_Competitor = c.ID_Competitor
    INNER JOIN 
        person p ON c.ID_Person = p.ID_Person
    WHERE 
        e.ID_Competition = in_id_competition
        AND pa.PARALYMPICS_YEAR = in_paralympic_year
    ORDER BY 
        e.EventDate ASC;
END //

DELIMITER ;
