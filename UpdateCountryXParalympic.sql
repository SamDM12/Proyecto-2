USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateCountryXParalympic;
DELIMITER $$

CREATE PROCEDURE UpdateCountryXParalympic(
    IN p_id_countryxparalympic INT,
    IN p_id_paralympic INT,
    IN p_id_country INT
)
BEGIN
    -- Verificar si el ID de CountryXParalympic existe
    IF NOT EXISTS (SELECT 1 FROM CountryXParalympic WHERE ID_COUNTRYXPARALYMPIC = p_id_countryxparalympic) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de CountryXParalympic no existe.';
    END IF;

    -- Verificar si el ID_PARALYMPIC existe
    IF p_id_paralympic IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Paralympic WHERE ID_PARALYMPIC = p_id_paralympic) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Paralympic no existe.';
    END IF;

    -- Verificar si el ID_COUNTRY existe
    IF p_id_country IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Country WHERE ID_COUNTRY = p_id_country) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Country no existe.';
    END IF;

    -- Actualizar los campos de la tabla CountryXParalympic solo para los valores que no son NULL
    UPDATE CountryXParalympic
    SET 
        ID_PARALYMPIC = COALESCE(p_id_paralympic, ID_PARALYMPIC),
        ID_COUNTRY = COALESCE(p_id_country, ID_COUNTRY)
    WHERE ID_COUNTRYXPARALYMPIC = p_id_countryxparalympic;
END $$

DELIMITER ;
