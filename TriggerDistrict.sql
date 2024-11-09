DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_district
BEFORE INSERT ON district
FOR EACH ROW
BEGIN

    IF NEW.ID_DISTRICT IS NOT NULL THEN
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
            'district',
            'ID_DISTRICT',
            'NULL',
            NEW.ID_DISTRICT,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISTRICT_NAME IS NOT NULL THEN
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
            'district',
            'DISTRICT_NAME',
            'NULL',
            NEW.DISTRICT_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
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
            'district',
            'ID_CANTON',
            'NULL',
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_district
BEFORE UPDATE ON district
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_DISTRICT != OLD.ID_DISTRICT THEN
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
            'district',
            'ID_DISTRICT',
            OLD.ID_DISTRICT,
            NEW.ID_DISTRICT,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISTRICT_NAME != OLD.DISTRICT_NAME THEN
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
            'district',
            'DISTRICT_NAME',
            OLD.DISTRICT_NAME,
            NEW.DISTRICT_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
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
            'district',
            'ID_CANTON',
            OLD.ID_CANTON,
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;