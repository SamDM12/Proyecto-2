USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateDisability;
DELIMITER $$

CREATE PROCEDURE UpdateDisability(
    IN p_id_disability INT,
    IN p_disabilityname VARCHAR(20)
)
BEGIN
    -- Verificar si el ID de la discapacidad existe
    IF NOT EXISTS (SELECT 1 FROM Disability WHERE ID_DISABILITY = p_id_disability) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Disability no existe.';
    END IF;

    -- Actualizar la tabla Disability solo si se proporciona un nuevo nombre de discapacidad
    UPDATE Disability
    SET 
        DISABILITYNAME = COALESCE(p_disabilityname, DISABILITYNAME)
    WHERE ID_DISABILITY = p_id_disability;
END $$

DELIMITER ;
