USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdatePhoneType;
DELIMITER $$

CREATE PROCEDURE UpdatePhoneType(
    IN p_id_phonetype INT,
    IN p_phonetype VARCHAR(15)
)
BEGIN
    -- Verificar si el ID de PhoneType existe
    IF NOT EXISTS (SELECT 1 FROM PhoneType WHERE ID_PHONETYPE = p_id_phonetype) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de PhoneType no existe.';
    END IF;

    -- Actualizar la tabla PhoneType solo para el campo que no sea NULL
    UPDATE PhoneType
    SET 
        PHONETYPE = COALESCE(p_phonetype, PHONETYPE)
    WHERE ID_PHONETYPE = p_id_phonetype;
END $$
DELIMITER ;
