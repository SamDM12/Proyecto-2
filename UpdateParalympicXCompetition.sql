USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateParalympicXCompetition;
DELIMITER $$

CREATE PROCEDURE UpdateParalympicXCompetition(
    IN p_id_paralympicxcompetition INT,
    IN p_id_paralympic INT,
    IN p_id_competition INT
)
BEGIN
    -- Verificar si el ID de ParalympicXCompetition existe
    IF NOT EXISTS (SELECT 1 FROM ParalympicXCompetition WHERE ID_PARALYMPICXCOMPETITION = p_id_paralympicxcompetition) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de ParalympicXCompetition no existe.';
    END IF;

    -- Verificar si el ID_PARALYMPIC existe
    IF p_id_paralympic IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Paralympic WHERE ID_PARALYMPIC = p_id_paralympic) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Paralympic no existe.';
    END IF;

    -- Verificar si el ID_COMPETITION existe
    IF p_id_competition IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Competition WHERE ID_COMPETITION = p_id_competition) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Competition no existe.';
    END IF;

    -- Actualizar los campos de la tabla ParalympicXCompetition solo para los valores que no son NULL
    UPDATE ParalympicXCompetition
    SET 
        ID_PARALYMPIC = COALESCE(p_id_paralympic, ID_PARALYMPIC),
        ID_COMPETITION = COALESCE(p_id_competition, ID_COMPETITION)
    WHERE ID_PARALYMPICXCOMPETITION = p_id_paralympicxcompetition;
END $$

DELIMITER ;
