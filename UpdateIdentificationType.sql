USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateIdentificationType;
DELIMITER $$

CREATE PROCEDURE UpdateIdentificationType(
    IN p_id_identificationtype INT,
    IN p_identificationtype VARCHAR(15)
)
BEGIN
    -- Verificar si el ID de IdentificationType existe
    IF NOT EXISTS (SELECT 1 FROM IdentificationType WHERE ID_IDENTIFICATIONTYPE = p_id_identificationtype) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de IdentificationType no existe.';
    END IF;

    -- Actualizar el tipo de identificación solo si p_identificationtype no es NULL
    UPDATE IdentificationType
    SET 
        IDENTIFICATIONTYPE = COALESCE(p_identificationtype, IDENTIFICATIONTYPE)
    WHERE ID_IDENTIFICATIONTYPE = p_id_identificationtype;
END $$
DELIMITER ;
