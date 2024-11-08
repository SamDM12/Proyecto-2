USE ParalympicGames;
-- DROP PROCEDURE InsertCompetitorXDisability;

DELIMITER $$

CREATE PROCEDURE InsertCompetitorXDisability(
    IN p_ID_Competitor INT,
    IN p_ID_Disability INT
)
BEGIN
    DECLARE competitorExists, disabilityExists, duplicateExists INT;

    -- Verificar existencia de ID_Competitor en la tabla Competitor
    SELECT COUNT(*) INTO competitorExists
    FROM Competitor
    WHERE ID_Competitor = p_ID_Competitor;

    IF competitorExists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: ID_Competitor no existe en la tabla Competitor';
    END IF;

    -- Verificar existencia de ID_Disability en la tabla Disability
    SELECT COUNT(*) INTO disabilityExists
    FROM Disability
    WHERE ID_Disability = p_ID_Disability;

    IF disabilityExists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: ID_Disability no existe en la tabla Disability';
    END IF;

    -- Verificar si ya existe un registro duplicado en CompetitorXDisability
    SELECT COUNT(*) INTO duplicateExists
    FROM CompetitorXDisability
    WHERE ID_Competitor = p_ID_Competitor AND ID_Disability = p_ID_Disability;

    IF duplicateExists > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Ya existe un registro con esta combinación de ID_Competitor y ID_Disability.';
    END IF;

    -- Insertar en la tabla CompetitorXDisability si todas las validaciones son correctas
    INSERT INTO CompetitorXDisability (ID_Competitor, ID_Disability)
    VALUES (p_ID_Competitor, p_ID_Disability);
END $$

DELIMITER ;
