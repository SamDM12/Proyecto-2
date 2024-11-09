USE ParalympicGames;
-- DROP PROCEDURE DeleteCountry;

DELIMITER //

CREATE PROCEDURE DeleteCountry(IN CountryID INT)
BEGIN
    -- Verificar si la persona existe antes de intentar eliminarla
    IF EXISTS (SELECT 1 FROM Country WHERE ID_Country = CountryID) THEN
        -- Intentar eliminar la persona de la tabla
        DELETE FROM Country WHERE ID_Country = CountryID;
        
        -- Mensaje de confirmación
        SELECT CONCAT('El país con ID ', CountryID, ' ha sido eliminada correctamente.') AS Resultado;
    ELSE
        -- Si no existe, enviar mensaje de error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningun país con el número de identificación especificado.';
    END IF;
END //

DELIMITER ;