USE ParalympicGames;
-- DROP PROCEDURE DeleteCompetition;

DELIMITER //

CREATE PROCEDURE DeletePhoneType(IN PhoneTypeID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM PhoneType WHERE ID_PhoneType = PhoneTypeID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM PhoneType WHERE ID_PhoneType = PhoneTypeID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El tipo de teléfono con ID ', PhoneTypeID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun tipo de teléfono con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;