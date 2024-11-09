DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_disability
BEFORE INSERT ON disability
FOR EACH ROW
BEGIN

    IF NEW.ID_DISABILITY IS NOT NULL THEN
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
            'disability',
            'ID_DISABILITY',
            'NULL',
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISABILITYNAME IS NOT NULL THEN
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
            'disability',
            'DISABILITYNAME',
            'NULL',
            NEW.DISABILITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_disability
BEFORE UPDATE ON disability
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_DISABILITY != OLD.ID_DISABILITY THEN
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
            'disability',
            'ID_DISABILITY',
            OLD.ID_DISABILITY,
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISABILITYNAME != OLD.DISABILITYNAME THEN
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
            'disability',
            'DISABILITYNAME',
            OLD.DISABILITYNAME,
            NEW.DISABILITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;