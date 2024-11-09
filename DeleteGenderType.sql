USE ParalympicGames;
-- DROP PROCEDURE DeleteCompetition;

DELIMITER //

CREATE PROCEDURE DeleteGenderType(IN GenderTypeID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM GenderType WHERE ID_GenderType = GenderTypeID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM GenderType WHERE ID_GenderType = GenderTypeID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El género con ID ', GenderTypeID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun género con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;