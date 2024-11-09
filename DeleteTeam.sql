USE ParalympicGames;
-- DROP PROCEDURE DeleteCompetition;

DELIMITER //

CREATE PROCEDURE DeleteTeam(IN TeamID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM Team WHERE ID_Team = TeamID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM Team WHERE ID_Team = TeamID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El equipo con ID ', TeamID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun equipo con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;