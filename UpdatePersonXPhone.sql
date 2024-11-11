USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdatePersonXPhone;
DELIMITER $$

CREATE PROCEDURE UpdatePersonXPhone(
    IN p_id_phoneXperson INT,
    IN p_id_person INT,
    IN p_id_phone INT
)
BEGIN
    -- Verificar si el ID de PersonXPhone existe
    IF NOT EXISTS (SELECT 1 FROM PersonXPhone WHERE ID_PHONEXPERSON = p_id_phoneXperson) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de PersonXPhone no existe.';
    END IF;

    -- Verificar si el ID de Person existe, si se proporciona
    IF p_id_person IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Person WHERE ID_PERSON = p_id_person) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Person no existe.';
    END IF;

    -- Verificar si el ID de Phone existe, si se proporciona
    IF p_id_phone IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Phone WHERE ID_PHONE = p_id_phone) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Phone no existe.';
    END IF;

    -- Actualizar la tabla PersonXPhone solo para los campos que no son NULL
    UPDATE PersonXPhone
    SET 
        ID_PERSON = COALESCE(p_id_person, ID_PERSON),
        ID_PHONE = COALESCE(p_id_phone, ID_PHONE)
    WHERE ID_PHONEXPERSON = p_id_phoneXperson;
END $$
DELIMITER ;
