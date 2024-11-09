DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_coachXcompetitor
BEFORE INSERT ON coachXcompetitor
FOR EACH ROW
BEGIN

    IF NEW.ID_COACHXCOMPETITOR IS NOT NULL THEN
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
            'coachXcompetitor',
            'ID_COACHXCOMPETITOR',
            'NULL',
            NEW.ID_COACHXCOMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COACH IS NOT NULL THEN
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
            'coachXcompetitor',
            'ID_COACH',
            'NULL',
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR IS NOT NULL THEN
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
            'coachXcompetitor',
            'ID_COMPETITOR',
            'NULL',
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_coachXcompetitor
BEFORE UPDATE ON coachXcompetitor
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COACHXCOMPETITOR != OLD.ID_COACHXCOMPETITOR THEN
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
            'coachXcompetitor',
            'ID_COACHXCOMPETITOR',
            OLD.ID_COACHXCOMPETITOR,
            NEW.ID_COACHXCOMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COACH != OLD.ID_COACH THEN
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
            'coachXcompetitor',
            'ID_COACH',
            OLD.ID_COACH,
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_COMPETITOR != OLD.ID_COMPETITOR THEN
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
            'coachXcompetitor',
            'ID_COMPETITOR',
            OLD.ID_COMPETITOR,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;