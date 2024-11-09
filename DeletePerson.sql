USE ParalympicGames;
-- DROP PROCEDURE DeletePerson;

DELIMITER //

CREATE PROCEDURE DeletePerson(IN personID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM person WHERE ID_PERSON = personID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM person WHERE ID_PERSON = personID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('La persona con ID ', personID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna persona con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;
