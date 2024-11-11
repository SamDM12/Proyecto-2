USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateCompetition;
DELIMITER $$

CREATE PROCEDURE UpdateCompetition(
    IN p_id_competition INT,
    IN p_competitionname VARCHAR(15),
    IN p_competitiondate DATE,
    IN p_competitiondescription VARCHAR(100)
)
BEGIN
    -- Verificar si el ID de Competition existe
    IF NOT EXISTS (SELECT 1 FROM Competition WHERE ID_COMPETITION = p_id_competition) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Competition no existe.';
    END IF;

    -- Actualizar los campos de la tabla Competition solo para los valores que no son NULL
    UPDATE Competition
    SET 
        COMPETITIONNAME = COALESCE(p_competitionname, COMPETITIONNAME),
        COMPETITIONDATE = COALESCE(p_competitiondate, COMPETITIONDATE),
        COMPETITIONDESCRIPTION = COALESCE(p_competitiondescription, COMPETITIONDESCRIPTION)
    WHERE ID_COMPETITION = p_id_competition;
END $$

DELIMITER ;
