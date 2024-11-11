USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateParalympic;
DELIMITER $$

CREATE PROCEDURE UpdateParalympic(
    IN p_id_paralympic INT,
    IN p_paralympics_year INT,
    IN p_id_country INT
)
BEGIN
    -- Verificar si el ID de Paralympic existe
    IF NOT EXISTS (SELECT 1 FROM Paralympic WHERE ID_PARALYMPIC = p_id_paralympic) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Paralympic no existe.';
    END IF;

    -- Verificar si el ID_COUNTRY existe
    IF p_id_country IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Country WHERE ID_COUNTRY = p_id_country) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Country no existe.';
    END IF;

    -- Actualizar los campos de la tabla Paralympic solo para los valores que no son NULL
    UPDATE Paralympic
    SET 
        PARALYMPICS_YEAR = COALESCE(p_paralympics_year, PARALYMPICS_YEAR),
        ID_COUNTRY = COALESCE(p_id_country, ID_COUNTRY)
    WHERE ID_PARALYMPIC = p_id_paralympic;
END $$

DELIMITER ;
