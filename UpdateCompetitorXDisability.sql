USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateCompetitorXDisability;
DELIMITER $$

CREATE PROCEDURE UpdateCompetitorXDisability(
    IN p_id_competitorxdisability INT,
    IN p_id_competitor INT,
    IN p_id_disability INT
)
BEGIN
    -- Verificar si el ID de CompetitorXDisability existe
    IF NOT EXISTS (SELECT 1 FROM CompetitorXDisability WHERE ID_COMPETITORXDISABILITY = p_id_competitorxdisability) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de CompetitorXDisability no existe.';
    END IF;

    -- Verificar si el nuevo ID_COMPETITOR existe en la tabla Competitor
    IF p_id_competitor IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Competitor WHERE ID_COMPETITOR = p_id_competitor) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Competitor no existe.';
    END IF;

    -- Verificar si el nuevo ID_DISABILITY existe en la tabla Disability
    IF p_id_disability IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Disability WHERE ID_DISABILITY = p_id_disability) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Disability no existe.';
    END IF;

    -- Actualizar la tabla CompetitorXDisability solo para los campos que no son NULL
    UPDATE CompetitorXDisability
    SET 
        ID_COMPETITOR = COALESCE(p_id_competitor, ID_COMPETITOR),
        ID_DISABILITY = COALESCE(p_id_disability, ID_DISABILITY)
    WHERE ID_COMPETITORXDISABILITY = p_id_competitorxdisability;
END $$
DELIMITER ;
