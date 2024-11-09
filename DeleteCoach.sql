USE ParalympicGames;
-- DROP PROCEDURE DeleteCoach;

DELIMITER //

CREATE PROCEDURE DeleteCoach(IN CoachID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM Coach WHERE ID_Coach = CoachID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM Coach WHERE ID_Coach = CoachID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El entrenador con ID ', CoachID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun entrenador con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;