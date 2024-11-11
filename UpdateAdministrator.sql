USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateAdministrator;
DELIMITER $$

CREATE PROCEDURE UpdateAdministrator(
    IN p_id_admin INT,
    IN p_id_person INT,
    IN p_password_admin VARCHAR(200),
    IN p_username VARCHAR(20)
)
BEGIN
    -- Verificar si el ID de Administrator existe
    IF NOT EXISTS (SELECT 1 FROM Administrator WHERE ID_ADMIN = p_id_admin) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Administrator no existe.';
    END IF;

    -- Verificar si el ID_PERSON proporcionado existe en la tabla Person si no es NULL
    IF p_id_person IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Person WHERE ID_PERSON = p_id_person) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Person no existe.';
    END IF;

    -- Actualizar los campos de la tabla Administrator solo para los valores que no son NULL
    UPDATE Administrator
    SET 
        ID_PERSON = COALESCE(p_id_person, ID_PERSON),
        PASSWORD_ADMIN = COALESCE(p_password_admin, PASSWORD_ADMIN),
        USERNAME = COALESCE(p_username, USERNAME)
    WHERE ID_ADMIN = p_id_admin;
END $$
DELIMITER ;
