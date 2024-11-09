DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_countryXparalympic
BEFORE INSERT ON countryXparalympic
FOR EACH ROW
BEGIN

    IF NEW.ID_COUNTRYXPARALYMPIC IS NOT NULL THEN
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
            'countryXparalympic',
            'ID_COUNTRYXPARALYMPIC',
            'NULL',
            NEW.ID_COUNTRYXPARALYMPIC,
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
            'countryXparalympic',
            'ID_PARALYMPIC',
            'NULL',
            NEW.ID_PARALYMPIC,
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
            'countryXparalympic',
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
CREATE TRIGGER ParalympicGames.before_update_countryXparalympic
BEFORE UPDATE ON countryXparalympic
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COUNTRYXPARALYMPIC != OLD.ID_COUNTRYXPARALYMPIC THEN
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
            'countryXparalympic',
            'ID_COUNTRYXPARALYMPIC',
            OLD.ID_COUNTRYXPARALYMPIC,
            NEW.ID_COUNTRYXPARALYMPIC,
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
            'countryXparalympic',
            'ID_PARALYMPIC',
            OLD.ID_PARALYMPIC,
            NEW.ID_PARALYMPIC,
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
            'countryXparalympic',
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