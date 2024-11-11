USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateTeam;
DELIMITER $$

CREATE PROCEDURE UpdateTeam(
    IN p_id_team INT,
    IN p_teamname VARCHAR(50),
    IN p_quantitymembers INT
)
BEGIN
    -- Verificar si el ID del equipo existe
    IF NOT EXISTS (SELECT 1 FROM Team WHERE ID_TEAM = p_id_team) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Team no existe.';
    END IF;

    -- Actualizar la tabla Team solo para los campos que no son NULL
    UPDATE Team
    SET 
        TeamName = COALESCE(p_teamname, TeamName),
        QuantityMembers = COALESCE(p_quantitymembers, QuantityMembers)
    WHERE ID_TEAM = p_id_team;
END $$

DELIMITER ;
