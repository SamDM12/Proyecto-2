USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateCompetitorXCompetition;
DELIMITER $$

CREATE PROCEDURE UpdateCompetitorXCompetition(
    IN p_id_competitorxcompetition INT,
    IN p_id_competitor INT,
    IN p_id_competition INT,
    IN p_timerecorded INT,
    IN p_score INT,
    IN p_positionrecorded INT
)
BEGIN
    -- Verificar si el ID de CompetitorXCompetition existe
    IF NOT EXISTS (SELECT 1 FROM CompetitorXCompetition WHERE ID_COMPETITORXCOMPETITION = p_id_competitorxcompetition) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de CompetitorXCompetition no existe.';
    END IF;

    -- Verificar si el ID_COMPETITOR proporcionado existe en la tabla Competitor si no es NULL
    IF p_id_competitor IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Competitor WHERE ID_COMPETITOR = p_id_competitor) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Competitor no existe.';
    END IF;

    -- Verificar si el ID_COMPETITION proporcionado existe en la tabla Competition si no es NULL
    IF p_id_competition IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Competition WHERE ID_COMPETITION = p_id_competition) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Competition no existe.';
    END IF;

    -- Actualizar los campos de la tabla CompetitorXCompetition solo para los valores que no son NULL
    UPDATE CompetitorXCompetition
    SET 
        ID_COMPETITOR = COALESCE(p_id_competitor, ID_COMPETITOR),
        ID_COMPETITION = COALESCE(p_id_competition, ID_COMPETITION),
        TIMERECORDED = COALESCE(p_timerecorded, TIMERECORDED),
        SCORE = COALESCE(p_score, SCORE),
        POSITIONRECORDED = COALESCE(p_positionrecorded, POSITIONRECORDED)
    WHERE ID_COMPETITORXCOMPETITION = p_id_competitorxcompetition;
END $$
DELIMITER ;
