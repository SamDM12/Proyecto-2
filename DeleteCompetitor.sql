USE ParalympicGames;
-- DROP PROCEDURE DeleteCompetition;

DELIMITER //

CREATE PROCEDURE DeleteCompetitor(IN CompetitorID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM Competitor WHERE ID_Competitor = CompetitorID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM Competitor WHERE ID_Competitor = CompetitorID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El competidor con ID ', CompetitorID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun competidor con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;