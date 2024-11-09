USE ParalympicGames;
-- DROP PROCEDURE DeleteCompetition;

DELIMITER //

CREATE PROCEDURE DeleteCompetition(IN competitionID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM competition WHERE ID_Competition = competitionID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM competition WHERE ID_Competition = competitionID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('La Competición con ID ', competitionID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna competencia con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;