DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_nationality
BEFORE INSERT ON nationality
FOR EACH ROW
BEGIN

    IF NEW.ID_NATIONALITY IS NOT NULL THEN
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
            'nationality',
            'ID_NATIONALITY',
            'NULL',
            NEW.ID_NATIONALITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.NATIONALITYNAME IS NOT NULL THEN
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
            'nationality',
            'NATIONALITYNAME',
            'NULL',
            NEW.NATIONALITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_nationality
BEFORE UPDATE ON nationality
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_NATIONALITY != OLD.ID_NATIONALITY THEN
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
            'nationality',
            'ID_NATIONALITY',
            OLD.ID_NATIONALITY,
            NEW.ID_NATIONALITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.NATIONALITYNAME != OLD.NATIONALITYNAME THEN
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
            'nationality',
            'NATIONALITYNAME',
            OLD.NATIONALITYNAME,
            NEW.NATIONALITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;