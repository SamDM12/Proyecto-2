USE ParalympicGames;
-- DROP PROCEDURE DeleteParalympic;

DELIMITER //

CREATE PROCEDURE DeleteParalympic(IN ParalympicID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM Paralympic WHERE ID_Paralympic = ParalympicID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM Paralympic WHERE ID_Paralympic = ParalympicID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('Los Paraolimpicos con ID ', ParalympicID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun paraolímpico con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;