DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_paralympic
BEFORE INSERT ON paralympic
FOR EACH ROW
BEGIN

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
            'paralympic',
            'ID_PARALYMPIC',
            'NULL',
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PARALYMPICS_YEAR IS NOT NULL THEN
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
            'paralympic',
            'PARALYMPICS_YEAR',
            'NULL',
            NEW.PARALYMPICS_YEAR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COUNTRY IS NOT NULL THEN
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
            'paralympic',
            'ID_COUNTRY',
            'NULL',
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_paralympic
BEFORE UPDATE ON paralympic
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
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
            'paralympic',
            'ID_PARALYMPIC',
            OLD.ID_PARALYMPIC,
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PARALYMPICS_YEAR != OLD.PARALYMPICS_YEAR THEN
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
            'paralympic',
            'PARALYMPICS_YEAR',
            OLD.PARALYMPICS_YEAR,
            NEW.PARALYMPICS_YEAR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_COUNTRY != OLD.ID_COUNTRY THEN
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
            'paralympic',
            'ID_COUNTRY',
            OLD.ID_COUNTRY,
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;