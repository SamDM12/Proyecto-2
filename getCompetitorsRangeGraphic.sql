DELIMITER $$

CREATE PROCEDURE get_competitors_by_age_range (
    IN p_start_age INT,
    IN p_end_age INT,
    OUT p_in_range INT,
    OUT p_out_of_range INT
)
BEGIN
    -- Obtener la cantidad de competidores dentro del rango de edad
    SELECT COUNT(*) INTO p_in_range
    FROM COMPETITOR c
    JOIN PERSON p ON c.ID_PERSON = p.ID_PERSON
    WHERE TIMESTAMPDIFF(YEAR, p.BIRTHDATE, CURDATE()) BETWEEN p_start_age AND p_end_age;

    -- Obtener la cantidad de competidores fuera del rango de edad
    SELECT COUNT(*) INTO p_out_of_range
    FROM COMPETITOR c
    JOIN PERSON p ON c.ID_PERSON = p.ID_PERSON
    WHERE TIMESTAMPDIFF(YEAR, p.BIRTHDATE, CURDATE()) NOT BETWEEN p_start_age AND p_end_age;
    
    -- Mostrar resultados en consola (opcional)
    SELECT p_in_range AS 'Competitors in range', p_out_of_range AS 'Competitors out of range';

END$$

DELIMITER ;