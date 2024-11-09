DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_picture
BEFORE INSERT ON picture
FOR EACH ROW
BEGIN

    IF NEW.ID_PICTURE IS NOT NULL THEN
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
            'picture',
            'ID_PICTURE',
            'NULL',
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IMAGE IS NOT NULL THEN
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
            'picture',
            'IMAGE',
            'NULL',
            NEW.IMAGE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_picture
BEFORE UPDATE ON picture
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PICTURE != OLD.ID_PICTURE THEN
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
            'picture',
            'ID_PICTURE',
            OLD.ID_PICTURE,
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IMAGE != OLD.IMAGE THEN
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
            'picture',
            'IMAGE',
            OLD.IMAGE,
            NEW.IMAGE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;