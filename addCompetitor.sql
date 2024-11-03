USE ParalympicGames;
-- DROP PROCEDURE addCompetitor;


delimiter $$
CREATE PROCEDURE addCompetitor(IN newIdentificationNumber INT, IN newClasificationScore INT, IN newTeamName VARCHAR(15))
BEGIN
    DECLARE personID, teamID, existingCompetitorID INT;

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

    -- Verificar si ya existe un competidor con el mismo ID_PERSON y ID_TEAM
    SELECT ID_COMPETITOR INTO existingCompetitorID
    FROM COMPETITOR
    WHERE ID_PERSON = personID AND ID_TEAM = teamID;

    -- Si existe un registro, lanzar un error
    IF existingCompetitorID IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El competidor ya existe en el equipo especificado.';
    END IF;

    -- Insertar el nuevo competidor si no existe duplicado
    INSERT INTO COMPETITOR (CLASIFICATIONSCORE, ID_PERSON, ID_TEAM)
    VALUES (newClasificationScore, personID, teamID);
END $$
delimiter ;
