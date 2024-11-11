USE ParalympicGames;
DROP procedure IF EXISTS UpdatePerson;
DELIMITER $$

CREATE PROCEDURE UpdatePerson(
    IN p_id_person INT,
    IN p_identificationnumber INT,
    IN p_firstname VARCHAR(15),
    IN p_secondname VARCHAR(15),
    IN p_firstlastname VARCHAR(15),
    IN p_secondlastname VARCHAR(15),
    IN p_birthdate DATE,
    IN p_id_country INT,
    IN p_id_gendertype INT,
    IN p_id_identificationtype INT
)
BEGIN
    -- Verificar si el ID de la persona existe
    IF NOT EXISTS (SELECT 1 FROM Person WHERE ID_PERSON = p_id_person) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de la persona no existe.';
    END IF;

    
    IF p_id_country IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Country WHERE ID_COUNTRY = p_id_country) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Country no existe.';
    END IF;

    IF p_id_gendertype IS NOT NULL AND NOT EXISTS (SELECT 1 FROM GenderType WHERE ID_GENDERTYPE = p_id_gendertype) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de GenderType no existe.';
    END IF;

    IF p_id_identificationtype IS NOT NULL AND NOT EXISTS (SELECT 1 FROM IdentificationType WHERE ID_IDENTIFICATIONTYPE = p_id_identificationtype) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de IdentificationType no existe.';
    END IF;

    -- Actualizar la tabla Person solo para los campos que no son NULL
    UPDATE Person
    SET 
        IDENTIFICATIONNUMBER = COALESCE(p_identificationnumber, IDENTIFICATIONNUMBER),
        FIRSTNAME = COALESCE(p_firstname, FIRSTNAME),
        SECONDNAME = COALESCE(p_secondname, SECONDNAME),
        FIRSTLASTNAME = COALESCE(p_firstlastname, FIRSTLASTNAME),
        SECONDLASTNAME = COALESCE(p_secondlastname, SECONDLASTNAME),
        BIRTHDATE = COALESCE(p_birthdate, BIRTHDATE),
        id_Country = COALESCE(p_id_country, id_Country),
        id_gendertype = COALESCE(p_id_gendertype, id_gendertype),
        id_identificationtype = COALESCE(p_id_identificationtype, id_identificationtype)
    WHERE ID_PERSON = p_id_person;
END $$

DELIMITER ;
