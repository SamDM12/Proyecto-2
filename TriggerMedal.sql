DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medal
BEFORE INSERT ON medal
FOR EACH ROW
BEGIN

    IF NEW.ID_MEDAL IS NOT NULL THEN
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
            'medal',
            'ID_MEDAL',
            'NULL',
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDALTYPE IS NOT NULL THEN
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
            'medal',
            'ID_MEDALTYPE',
            'NULL',
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_medal
BEFORE UPDATE ON medal
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_MEDAL != OLD.ID_MEDAL THEN
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
            'medal',
            'ID_IDENTIFICATIONTYPE',
            OLD.ID_MEDAL,
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDALTYPE != OLD.ID_MEDALTYPE THEN
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
            'medal',
            'ID_MEDALTYPE',
            OLD.ID_MEDALTYPE,
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;