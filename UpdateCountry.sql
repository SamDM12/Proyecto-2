USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateCountry;
DELIMITER $$

CREATE PROCEDURE UpdateCountry(
    IN p_id_country INT,
    IN p_country_name VARCHAR(15)
)
BEGIN
    -- Verificar si el ID de Country existe
    IF NOT EXISTS (SELECT 1 FROM Country WHERE ID_COUNTRY = p_id_country) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Country no existe.';
    END IF;

    -- Actualizar el nombre del país solo si p_country_name no es NULL
    UPDATE Country
    SET 
        COUNTRY_NAME = COALESCE(p_country_name, COUNTRY_NAME)
    WHERE ID_COUNTRY = p_id_country;
END $$
DELIMITER ;
