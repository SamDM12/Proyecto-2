DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_gendertype
BEFORE INSERT ON gendertype
FOR EACH ROW
BEGIN

    IF NEW.ID_GENDERTYPE IS NOT NULL THEN
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
            'gendertype',
            'ID_GENDERTYPE',
            'NULL',
            NEW.ID_GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.GENDERTYPE IS NOT NULL THEN
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
            'gendertype',
            'GENDERTYPE',
            'NULL',
            NEW.GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_gendertype
BEFORE UPDATE ON gendertype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_GENDERTYPE != OLD.ID_GENDERTYPE THEN
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
            'gendertype',
            'ID_GENDERTYPE',
            OLD.ID_GENDERTYPE,
            NEW.ID_GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.GENDERTYPE != OLD.GENDERTYPE THEN
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
            'gendertype',
            'GENDERTYPE',
            OLD.GENDERTYPE,
            NEW.GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;