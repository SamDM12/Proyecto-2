USE ParalympicGames;
-- DROP PROCEDURE DeleteCompetition;

DELIMITER //

CREATE PROCEDURE DeleteAdministrator(IN AdministratorID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM Administrator WHERE ID_ADMIN = AdministratorID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM Administrator WHERE ID_ADMIN = AdministratorID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El admin con ID ', AdministratorID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun admin con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;