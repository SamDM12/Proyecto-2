USE ParalympicGames;
-- DROP PROCEDURE DeleteMedalType;

DELIMITER //

CREATE PROCEDURE DeleteMedalType(IN MedalTypeID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM MedalType WHERE ID_MedalType = MedalTypeID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM MedalType WHERE ID_MedalType = MedalTypeID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('La medalla con ID ', MedalTypeID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna Medalla con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;