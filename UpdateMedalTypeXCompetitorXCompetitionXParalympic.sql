USE ParalympicGames;
DROP PROCEDURE IF EXISTS UpdateMedalTypeXCompetitorXCompetitionXParalympic;
DELIMITER $$

CREATE PROCEDURE UpdateMedalTypeXCompetitorXCompetitionXParalympic(
    IN p_id_medaltypexcompetitorxcompetitionxparalympic INT,
    IN p_id_medaltype INT,
    IN p_id_competitor INT,
    IN p_id_competition INT,
    IN p_id_paralympic INT
)
BEGIN
    -- Verificar si el ID de MedalTypeXCompetitorXCompetitionXParalympic existe
    IF NOT EXISTS (SELECT 1 FROM MedalTypeXCompetitorXCompetitionXParalympic WHERE ID_MedalTypeXcompetitorXCompetitionXParalympic = p_id_medaltypexcompetitorxcompetitionxparalympic) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de MedalTypeXCompetitorXCompetitionXParalympic no existe.';
    END IF;

    -- Verificar si el ID_MEDALTYPE proporcionado existe en la tabla MedalType si no es NULL
    IF p_id_medaltype IS NOT NULL AND NOT EXISTS (SELECT 1 FROM MedalType WHERE ID_MedalType = p_id_medaltype) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de MedalType no existe.';
    END IF;

    -- Verificar si el ID_COMPETITOR proporcionado existe en la tabla Competitor si no es NULL
    IF p_id_competitor IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Competitor WHERE ID_COMPETITOR = p_id_competitor) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Competitor no existe.';
    END IF;

    -- Verificar si el ID_COMPETITION proporcionado existe en la tabla Competition si no es NULL
    IF p_id_competition IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Competition WHERE ID_COMPETITION = p_id_competition) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Competition no existe.';
    END IF;

    -- Verificar si el ID_PARALYMPIC proporcionado existe en la tabla Paralympic si no es NULL
    IF p_id_paralympic IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Paralympic WHERE ID_PARALYMPIC = p_id_paralympic) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de Paralympic no existe.';
    END IF;

    -- Actualizar los campos de la tabla MedalTypeXCompetitorXCompetitionXParalympic solo para los valores que no son NULL
    UPDATE MedalTypeXCompetitorXCompetitionXParalympic
    SET 
        ID_MedalType = COALESCE(p_id_medaltype, ID_MedalType),
        ID_Competitor = COALESCE(p_id_competitor, ID_Competitor),
        ID_Competition = COALESCE(p_id_competition, ID_Competition),
        ID_Paralympic = COALESCE(p_id_paralympic, ID_Paralympic)
    WHERE ID_MedalTypeXcompetitorXCompetitionXParalympic = p_id_medaltypexcompetitorxcompetitionxparalympic;
END $$

DELIMITER ;
