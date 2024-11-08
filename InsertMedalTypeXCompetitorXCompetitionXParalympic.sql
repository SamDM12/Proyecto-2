USE ParalympicGames;
-- DROP PROCEDURE InsertMedalTypeXCompetitorXCompetitionXParalympic;


DELIMITER //

CREATE PROCEDURE InsertMedalTypeXCompetitorXCompetitionXParalympic (
    IN p_ID_MedalType INT,
    IN p_ID_Competitor INT,
    IN p_ID_Competition INT,
    IN p_ID_Paralympic INT
)
BEGIN
    -- Verificar existencia de ID_MedalType en la tabla MedalType
    IF NOT EXISTS (SELECT 1 FROM MedalType WHERE ID_MedalType = p_ID_MedalType) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID_MedalType no existe en la tabla MedalType';
    END IF;

    -- Verificar existencia de ID_Competitor en la tabla Competitor
    IF NOT EXISTS (SELECT 1 FROM Competitor WHERE ID_Competitor = p_ID_Competitor) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID_Competitor no existe en la tabla Competitor';
    END IF;

    -- Verificar existencia de ID_Competition en la tabla Competition
    IF NOT EXISTS (SELECT 1 FROM Competition WHERE ID_Competition = p_ID_Competition) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID_Competition no existe en la tabla Competition';
    END IF;

    -- Verificar existencia de ID_Paralympic en la tabla Paralympic
    IF NOT EXISTS (SELECT 1 FROM Paralympic WHERE ID_Paralympic = p_ID_Paralympic) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID_Paralympic no existe en la tabla Paralympic';
    END IF;

    -- Verificar que el competidor esté registrado en la competencia elegida en CompetitorXCompetition
    IF NOT EXISTS (
        SELECT 1 
        FROM CompetitorXCompetition 
        WHERE ID_Competitor = p_ID_Competitor 
        AND ID_Competition = p_ID_Competition
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El competidor no está registrado en la competencia seleccionada';
    END IF;

    -- Verificar que la competencia esté registrada en el evento paralímpico elegido en ParalympicXCompetition
    IF NOT EXISTS (
        SELECT 1 
        FROM ParalympicXCompetition 
        WHERE ID_Paralympic = p_ID_Paralympic 
        AND ID_Competition = p_ID_Competition
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La competencia no está registrada en el evento paralímpico seleccionado';
    END IF;

    -- Verificar que el competidor no tenga ya una medalla en esta competencia
    IF EXISTS (
        SELECT 1 
        FROM MedalTypeXcompetitorXCompetitionXParalympic 
        WHERE ID_Competitor = p_ID_Competitor 
        AND ID_Competition = p_ID_Competition
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El competidor ya tiene una medalla asignada en esta competencia';
    END IF;

    -- Verificar que la competencia no tenga ya una medalla de este tipo asignada
    IF EXISTS (
        SELECT 1 
        FROM MedalTypeXcompetitorXCompetitionXParalympic 
        WHERE ID_Competition = p_ID_Competition 
        AND ID_MedalType = p_ID_MedalType
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La competencia ya tiene una medalla de este tipo asignada';
    END IF;

    -- Insertar en la tabla MedalTypeXcompetitorXCompetitionXParalympic si todas las validaciones son correctas
    INSERT INTO MedalTypeXcompetitorXCompetitionXParalympic (
        ID_MedalType, ID_Competitor, ID_Competition, ID_Paralympic
    ) VALUES (
        p_ID_MedalType, p_ID_Competitor, p_ID_Competition, p_ID_Paralympic
    );

END //

DELIMITER ;
