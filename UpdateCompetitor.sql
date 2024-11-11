USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateCompetitor;
DELIMITER $$

CREATE PROCEDURE UpdateCompetitor(
    IN p_id_competitor INT,
    IN p_clasificationscore INT,
    IN p_id_person INT,
    IN p_id_team INT
)
BEGIN
    -- Verificar si el ID del competidor existe
    IF NOT EXISTS (SELECT 1 FROM Competitor WHERE ID_COMPETITOR = p_id_competitor) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de competidor no existe.';
    END IF;

    -- Verificar si el ID de la persona existe, si se proporciona un nuevo ID
    IF p_id_person IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Person WHERE ID_PERSON = p_id_person) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Person no existe.';
    END IF;

    -- Verificar si el ID del equipo existe, si se proporciona un nuevo ID
    IF p_id_team IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Team WHERE ID_TEAM = p_id_team) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Team no existe.';
    END IF;

    -- Actualizar la tabla Competitor solo para los campos que no son NULL
    UPDATE Competitor
    SET 
        CLASIFICATIONSCORE = COALESCE(p_clasificationscore, CLASIFICATIONSCORE),
        ID_PERSON = COALESCE(p_id_person, ID_PERSON),
        ID_TEAM = COALESCE(p_id_team, ID_TEAM)
    WHERE ID_COMPETITOR = p_id_competitor;
END $$

DELIMITER ;
