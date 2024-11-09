DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_identificationtype
BEFORE INSERT ON identificationtype
FOR EACH ROW
BEGIN

    IF NEW.ID_IDENTIFICATIONTYPE IS NOT NULL THEN
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
            'identificationtype',
            'ID_IDENTIFICATIONTYPE',
            'NULL',
            NEW.ID_IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IDENTIFICATIONTYPE IS NOT NULL THEN
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
            'identificationtype',
            'IDENTIFICATIONTYPE',
            'NULL',
            NEW.IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_identificationtype
BEFORE UPDATE ON identificationtype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_IDENTIFICATIONTYPE != OLD.ID_IDENTIFICATIONTYPE THEN
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
            'identificationtype',
            'ID_IDENTIFICATIONTYPE',
            OLD.ID_IDENTIFICATIONTYPE,
            NEW.ID_IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IDENTIFICATIONTYPE != OLD.IDENTIFICATIONTYPE THEN
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
            'identificationtype',
            'IDENTIFICATIONTYPE',
            OLD.IDENTIFICATIONTYPE,
            NEW.IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;