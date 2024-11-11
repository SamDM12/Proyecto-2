USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateEmail;
DELIMITER $$

CREATE PROCEDURE UpdateEmail(
    IN p_id_email INT,
    IN p_emailaddress VARCHAR(20),
    IN p_id_person INT
)
BEGIN
    -- Verificar si el ID de Email existe
    IF NOT EXISTS (SELECT 1 FROM Email WHERE ID_EMAIL = p_id_email) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Email no existe.';
    END IF;

    -- Verificar si el nuevo ID_Person existe en la tabla Person
    IF p_id_person IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Person WHERE ID_PERSON = p_id_person) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Person no existe.';
    END IF;

    -- Actualizar la tabla Email solo para los campos que no son NULL
    UPDATE Email
    SET 
        EMAILADRESS = COALESCE(p_emailaddress, EMAILADRESS),
        id_Person = COALESCE(p_id_person, id_Person)
    WHERE ID_EMAIL = p_id_email;
END $$
DELIMITER ;


