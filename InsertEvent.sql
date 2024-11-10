USE ParalympicGames;

DROP PROCEDURE IF EXISTS InsertEvent;

DELIMITER //

CREATE PROCEDURE InsertEvent(
    IN in_id_competition INT,
    IN in_id_paralympic INT,
    IN in_id_competitor INT,
    IN in_eventDate DATE
)
BEGIN
    DECLARE competition_exists INT;
    DECLARE paralympic_exists INT;
    DECLARE competitor_exists INT;
    DECLARE duplicate_event INT;

    -- Verificar si la competición existe
    SELECT COUNT(*) INTO competition_exists
    FROM competition
    WHERE ID_Competition = in_id_competition;

    -- Verificar si los Juegos Paralímpicos existen
    SELECT COUNT(*) INTO paralympic_exists
    FROM paralympic
    WHERE ID_Paralympic = in_id_paralympic;

    -- Verificar si el competidor existe
    SELECT COUNT(*) INTO competitor_exists
    FROM competitor
    WHERE ID_Competitor = in_id_competitor;

    -- Verificar que el competidor no esté ya en el mismo evento (misma competición, juegos y fecha)
    SELECT COUNT(*) INTO duplicate_event
    FROM EventTable
    WHERE ID_Competition = in_id_competition
      AND ID_Paralympic = in_id_paralympic
      AND EventDate = in_eventDate
      AND ID_Competitor = in_id_competitor;

    -- Validar si todas las referencias existen y no hay duplicados
    IF competition_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La competición no existe';
    ELSEIF paralympic_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Los Juegos Paralímpicos no existen';
    ELSEIF competitor_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El competidor no existe';
    ELSEIF duplicate_event > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El competidor ya está registrado en este evento';
    ELSE
        -- Insertar el nuevo evento
        INSERT INTO EventTable (ID_Competition, ID_Paralympic, ID_Competitor, EventDate)
        VALUES (in_id_competition, in_id_paralympic, in_id_competitor, in_eventDate);
    END IF;
END //

DELIMITER ;
