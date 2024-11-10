USE ParalympicGames;

DROP PROCEDURE IF EXISTS GetTop5Scores;

DELIMITER //

CREATE PROCEDURE GetTop5Scores()
BEGIN
    SELECT
        p.FIRSTNAME AS CompetitorFirstName,
        p.FIRSTLASTNAME AS CompetitorLastName,
        c.COMPETITIONNAME AS CompetitionName,
        co.COUNTRY_NAME AS Country,
        cxc.SCORE AS Score
    FROM 
        competitorxcompetition cxc
    INNER JOIN competitor comp ON cxc.ID_COMPETITOR = comp.ID_COMPETITOR
    INNER JOIN person p ON comp.ID_PERSON = p.ID_PERSON
    INNER JOIN competition c ON cxc.ID_COMPETITION = c.ID_COMPETITION
    INNER JOIN country co ON p.ID_COUNTRY = co.ID_COUNTRY
    ORDER BY cxc.SCORE DESC
    LIMIT 5;
END //

DELIMITER ;

