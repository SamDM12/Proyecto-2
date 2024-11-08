USE ParalympicGames;
-- DROP PROCEDURE addCoach;

DELIMITER $$

CREATE PROCEDURE addCoach(IN newIdentificationNumber INT, IN newTeamName VARCHAR(15))
BEGIN
    DECLARE personID, teamID, existingCoachID INT;

    -- Obtener el ID de la persona
    SELECT ID_Person INTO personID
    FROM PERSON
    WHERE IDENTIFICATIONNUMBER = newIdentificationNumber;

    -- Validar si se encontró la persona
    IF personID IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna persona con el número de identificación especificado.';
    END IF;

    -- Obtener el ID del equipo
    SELECT ID_Team INTO teamID
    FROM TEAM
    WHERE TEAMNAME = newTeamName;

    -- Validar si se encontró el equipo
    IF teamID IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún equipo con el nombre especificado.';
    END IF;

    -- Verificar si ya existe un coach para el equipo
    SELECT ID_COACH INTO existingCoachID
    FROM COACH
    WHERE ID_TEAM = teamID;

    -- Si existe un coach en el equipo, lanzar un error
    IF existingCoachID IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Ya existe un coach asignado a este equipo.';
    END IF;

    -- Insertar el nuevo coach si no existe duplicado en el equipo
    INSERT INTO COACH (ID_PERSON, ID_TEAM)
    VALUES (personID, teamID);
END $$

DELIMITER ;
