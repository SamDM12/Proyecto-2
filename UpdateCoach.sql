USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateCoach;
DELIMITER $$

CREATE PROCEDURE UpdateCoach(
    IN p_id_coach INT,
    IN p_id_person INT,
    IN p_id_team INT
)
BEGIN
    -- Verificar si el ID del coach existe
    IF NOT EXISTS (SELECT 1 FROM Coach WHERE ID_COACH = p_id_coach) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Coach no existe.';
    END IF;

    -- Verificar si el ID_PERSON proporcionado existe en la tabla Person
    IF p_id_person IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Person WHERE ID_PERSON = p_id_person) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Person no existe.';
    END IF;

    -- Verificar si el ID_TEAM proporcionado existe en la tabla Team
    IF p_id_team IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Team WHERE ID_TEAM = p_id_team) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Team no existe.';
    END IF;

    -- Actualizar la tabla Coach solo para los campos que no son NULL
    UPDATE Coach
    SET 
        ID_PERSON = COALESCE(p_id_person, ID_PERSON),
        ID_TEAM = COALESCE(p_id_team, ID_TEAM)
    WHERE ID_COACH = p_id_coach;
END $$

DELIMITER ;
