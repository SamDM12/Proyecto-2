USE ParalympicGames;
DROP PROCEDURE get_competitors_by_age_range;
DELIMITER $$

CREATE PROCEDURE get_competitors_by_age_range (
    IN paralympicYear INT,   -- Año de los Juegos Paralímpicos
    IN p_start_age INT,      -- Edad mínima
    IN p_end_age INT,        -- Edad máxima
    OUT p_in_range INT,      -- Competidores dentro del rango de edad
    OUT p_out_of_range INT   -- Competidores fuera del rango de edad
)
BEGIN
    -- Obtener la cantidad de competidores dentro del rango de edad en el año de los Juegos Paralímpicos
    SELECT COUNT(*) INTO p_in_range
    FROM COMPETITOR c
    JOIN PERSON p ON c.ID_PERSON = p.ID_PERSON
    INNER JOIN COMPETITORXCOMPETITION cc ON c.ID_COMPETITOR = cc.ID_COMPETITOR  -- Usar la tabla correcta para relacionar competidor y competencia
    INNER JOIN PARALYMPICXCOMPETITION pcx ON cc.ID_COMPETITION = pcx.ID_COMPETITION  -- Relacionar competidor con competición en los Juegos Paralímpicos
    INNER JOIN PARALYMPIC pmp ON pcx.ID_PARALYMPIC = pmp.ID_PARALYMPIC
    WHERE TIMESTAMPDIFF(YEAR, p.BIRTHDATE, CURDATE()) BETWEEN p_start_age AND p_end_age
    AND pmp.PARALYMPICS_YEAR = paralympicYear;

    -- Obtener la cantidad de competidores fuera del rango de edad en el año de los Juegos Paralímpicos
    SELECT COUNT(*) INTO p_out_of_range
    FROM COMPETITOR c
    JOIN PERSON p ON c.ID_PERSON = p.ID_PERSON
    INNER JOIN COMPETITORXCOMPETITION cc ON c.ID_COMPETITOR = cc.ID_COMPETITOR  -- Usar la tabla correcta para relacionar competidor y competencia
    INNER JOIN PARALYMPICXCOMPETITION pcx ON cc.ID_COMPETITION = pcx.ID_COMPETITION  -- Relacionar competidor con competición en los Juegos Paralímpicos
    INNER JOIN PARALYMPIC pmp ON pcx.ID_PARALYMPIC = pmp.ID_PARALYMPIC
    WHERE TIMESTAMPDIFF(YEAR, p.BIRTHDATE, CURDATE()) NOT BETWEEN p_start_age AND p_end_age
    AND pmp.PARALYMPICS_YEAR = paralympicYear;
END $$

DELIMITER ;