USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdatePhone;
DELIMITER $$

CREATE PROCEDURE UpdatePhone(
    IN p_id_phone INT,
    IN p_phonenumber BIGINT,
    IN p_id_phonetype INT
)
BEGIN
    -- Verificar si el ID de Phone existe
    IF NOT EXISTS (SELECT 1 FROM Phone WHERE ID_PHONE = p_id_phone) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Phone no existe.';
    END IF;

    -- Verificar si el ID de PhoneType existe, si se proporciona
    IF p_id_phonetype IS NOT NULL AND NOT EXISTS (SELECT 1 FROM PhoneType WHERE ID_PHONETYPE = p_id_phonetype) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de PhoneType no existe.';
    END IF;

    -- Actualizar la tabla Phone solo para los campos que no son NULL
    UPDATE Phone
    SET 
        PHONENUMBER = COALESCE(p_phonenumber, PHONENUMBER),
        ID_PHONETYPE = COALESCE(p_id_phonetype, ID_PHONETYPE)
    WHERE ID_PHONE = p_id_phone;
END $$
DELIMITER ;
