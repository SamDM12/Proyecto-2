DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_coach
BEFORE INSERT ON coach
FOR EACH ROW
BEGIN

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
            'coach',
            'ID_COACH',
            'NULL',
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
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
            'coach',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_TEAM IS NOT NULL THEN
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
            'coach',
            'ID_TEAM',
            'NULL',
            NEW.ID_TEAM,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_coach
BEFORE UPDATE ON coach
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
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
            'coach',
            'ID_COACH',
            OLD.ID_COACH,
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON != OLD.ID_PERSON THEN
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
            'coach',
            'CANTON_NAME',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_TEAM != OLD.ID_TEAM THEN
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
            'coach',
            'ID_TEAM',
            OLD.ID_TEAM,
            NEW.ID_TEAM,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;