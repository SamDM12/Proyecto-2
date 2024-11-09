DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_paralympicXcompetition
BEFORE INSERT ON paralympicXcompetition
FOR EACH ROW
BEGIN

    IF NEW.ID_PARALYMPICXCOMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPICXCOMPETITION',
            'NULL',
            NEW.ID_PARALYMPICXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PARALYMPIC IS NOT NULL THEN
        INSERT INTO Log (
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPIC',
            'NULL',
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
            'paralympicgames',
            'paralympicXcompetition',
            'ID_COMPETITION',
            'NULL',
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_paralympicXcompetition
BEFORE UPDATE ON paralympicXcompetition
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PARALYMPICXCOMPETITION != OLD.ID_PARALYMPICXCOMPETITION THEN
        INSERT INTO Log (
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPICXCOMPETITION',
            OLD.ID_PARALYMPICXCOMPETITION,
            NEW.ID_PARALYMPICXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PARALYMPIC != OLD.ID_PARALYMPIC THEN
        INSERT INTO Log (
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPIC',
            OLD.ID_PARALYMPIC,
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_COMPETITION != OLD.ID_COMPETITION THEN
        INSERT INTO Log (
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
            'paralympicgames',
            'paralympicXcompetition',
            'ID_COMPETITION',
            OLD.ID_COMPETITION,
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;