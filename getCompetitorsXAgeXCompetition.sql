USE ParalympicGames;
DROP PROCEDURE GetCompetitorsInAgeRange;
DELIMITER $$

CREATE PROCEDURE GetCompetitorsInAgeRange(
    IN p_min_age INT,
    IN p_max_age INT,
    IN p_paralympics_year INT
)
BEGIN
    SELECT
        c.competitionname,
        SUM(CASE
            WHEN (TIMESTAMPDIFF(YEAR, pers.birthdate, CURDATE()) BETWEEN p_min_age AND p_max_age) THEN 1
            ELSE 0
        END) AS inRange,
        SUM(CASE
            WHEN (TIMESTAMPDIFF(YEAR, pers.birthdate, CURDATE()) NOT BETWEEN p_min_age AND p_max_age) THEN 1
            ELSE 0
        END) AS outRange
    FROM
        competition c
    JOIN
        competitorxcompetition cx ON cx.id_competition = c.id_competition
    JOIN
        competitor comp ON comp.id_competitor = cx.id_competitor
    JOIN
        paralympicxcompetition px ON px.id_competition = c.id_competition
    JOIN
        paralympic p ON p.id_paralympic = px.id_paralympic
    JOIN
        person pers ON pers.id_person = comp.id_person  -- Aquí cambiamos p.birthdate a pers.birthdate
    WHERE
        p.paralympics_year = p_paralympics_year  -- Filtro por año de la paralimpiada
    GROUP BY
        c.competitionname;
END $$

DELIMITER ;