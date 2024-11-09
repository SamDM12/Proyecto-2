DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_canton
BEFORE INSERT ON canton
FOR EACH ROW
BEGIN

    IF NEW.ID_CANTON IS NOT NULL THEN
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
            'canton',
            'ID_CANTON',
            'NULL',
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CANTON_NAME IS NOT NULL THEN
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
            'canton',
            'CANTON_NAME',
            'NULL',
            NEW.CANTON_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PROVINCE IS NOT NULL THEN
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
            'canton',
            'ID_PROVINCE',
            'NULL',
            NEW.ID_PROVINCE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_canton
BEFORE UPDATE ON canton
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_CANTON != OLD.ID_CANTON THEN
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
            'canton',
            'ID_CANTON',
            OLD.ID_CANTON,
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CANTON_NAME != OLD.CANTON_NAME THEN
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
            'canton',
            'CANTON_NAME',
            OLD.CANTON_NAME,
            NEW.CANTON_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_PROVINCE != OLD.ID_PROVINCE THEN
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
            'canton',
            'ID_PROVINCE',
            OLD.ID_PROVINCE,
            NEW.ID_PROVINCE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;