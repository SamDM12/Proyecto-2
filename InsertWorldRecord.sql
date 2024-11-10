DELIMITER //

CREATE PROCEDURE InsertWorldRecord(
    IN record_description VARCHAR(255),
    IN competition_id INT,
    IN country_id INT,
    IN paralympic_id INT,
    IN person_id INT
)
BEGIN
    -- Verificar si el ID de la competencia existe
    IF NOT EXISTS (SELECT 1 FROM Competition WHERE ID_Competition = competition_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de la competencia no existe';
    END IF;

    -- Verificar si el ID del país existe
    IF NOT EXISTS (SELECT 1 FROM Country WHERE ID_Country = country_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID del país no existe';
    END IF;

    -- Verificar si el ID de los Juegos Paralímpicos existe
    IF NOT EXISTS (SELECT 1 FROM Paralympic WHERE ID_Paralympic = paralympic_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de los Juegos Paralímpicos no existe';
    END IF;

    -- Verificar si el ID de la persona existe
    IF NOT EXISTS (SELECT 1 FROM Person WHERE ID_Person = person_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El ID de la persona no existe';
    END IF;

    -- Si todas las verificaciones son correctas, realizar la inserción
    INSERT INTO WolrdRecord (
        RecordDescription,
        ID_Competition,
        ID_Country,
        ID_Paralympic,
        ID_Person
    )
    VALUES (
        record_description,
        competition_id,
        country_id,
        paralympic_id,
        person_id
    );

END //

DELIMITER ;
