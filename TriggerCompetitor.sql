DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competitor
BEFORE INSERT ON competitor
FOR EACH ROW
BEGIN

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
            'competitor',
            'ID_COMPETITOR',
            'NULL',
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CLASIFICATIONSCORE IS NOT NULL THEN
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
            'competitor',
            'CLASIFICATIONSCORE',
            'NULL',
            NEW.CLASIFICATIONSCORE,
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
            'competitor',
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
            'competitor',
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
CREATE TRIGGER ParalympicGames.before_update_competitor
BEFORE UPDATE ON competitor
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
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
            'competitor',
            'ID_COMPETITOR',
            OLD.ID_COMPETITOR,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CLASIFICATIONSCORE != OLD.CLASIFICATIONSCORE THEN
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
            'competitor',
            'CLASIFICATIONSCORE',
            OLD.CLASIFICATIONSCORE,
            NEW.CLASIFICATIONSCORE,
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
            'competitor',
            'ID_PERSON',
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
            'competitor',
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