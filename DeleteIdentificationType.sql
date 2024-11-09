USE ParalympicGames;
-- DROP PROCEDURE DeleteCompetition;

DELIMITER //

CREATE PROCEDURE DeleteIdentificationType(IN IdentificationTypeID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM IdentificationType WHERE ID_IdentificationType = IdentificationTypeID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM IdentificationType WHERE ID_IdentificationType = IdentificationTypeID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El tipo de identificación con ID ', IdentificationTypeID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun tipo de identificacion con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;