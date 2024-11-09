USE ParalympicGames;
-- DROP PROCEDURE DeleteDisability;

DELIMITER //

CREATE PROCEDURE DeleteDisability(IN DisabilityID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM Disability WHERE ID_Disability = DisabilityID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM Disability WHERE ID_Disability = DisabilityID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('La discapacidad con ID ', DisabilityID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna discapacidad con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;