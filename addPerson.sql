USE ParalympicGames;
 -- DROP PROCEDURE addPerson;

delimiter $$
CREATE PROCEDURE addPerson(
    IN newIdentificationNumber INT, 
    IN newFirstName VARCHAR(15), 
    IN newSecondName VARCHAR(15), 
    IN newFirstLastName VARCHAR(15), 
    IN newSecondLastName VARCHAR(15), 
    IN newBirthDate DATE, 
    IN countryName VARCHAR(15), 
    IN genderName VARCHAR(15), 
    IN identificationName VARCHAR(15)
)
BEGIN 
    DECLARE countryID, genderTypeID, identificationTypeID, existingPersonID INT;

    -- Obtener el ID del país
    SELECT ID_COUNTRY INTO countryID
    FROM COUNTRY
    WHERE COUNTRY_NAME = countryName;

    -- Validar si se encontró el país
    IF countryID IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún país con el nombre especificado.';
    END IF;

    -- Obtener el ID del tipo de género
    SELECT ID_GENDERTYPE INTO genderTypeID
    FROM GENDERTYPE
    WHERE GENDERTYPE = genderName
	LIMIT 1;

    -- Validar si se encontró el tipo de género
    IF genderTypeID IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún tipo de género con el nombre especificado.';
    END IF;

    -- Obtener el ID del tipo de identificación
    SELECT ID_IDENTIFICATIONTYPE INTO identificationTypeID
    FROM IDENTIFICATIONTYPE
    WHERE IDENTIFICATIONTYPE = identificationName
    LIMIT 1;

    -- Validar si se encontró el tipo de identificación
    IF identificationTypeID IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún tipo de identificación con el nombre especificado.';
    END IF;

    -- Verificar si ya existe una persona con el mismo número de identificación
    SELECT ID_PERSON INTO existingPersonID
    FROM PERSON
    WHERE IDENTIFICATIONNUMBER = newIdentificationNumber;

    -- Si existe un registro, lanzar un error
    IF existingPersonID IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Ya existe una persona con el número de identificación especificado.';
    END IF;

    -- Insertar la nueva persona si no existe duplicado
    INSERT INTO PERSON (
        IDENTIFICATIONNUMBER, FIRSTNAME, SECONDNAME, FIRSTLASTNAME, SECONDLASTNAME, BIRTHDATE, 
        ID_COUNTRY, ID_GENDERTYPE, ID_IDENTIFICATIONTYPE
    )
    VALUES (
        newIdentificationNumber, newFirstName, newSecondName, newFirstLastName, 
        newSecondLastName, newBirthDate, countryID, genderTypeID, identificationTypeID
    );
END $$
delimiter ;
