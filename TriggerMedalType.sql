DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medaltype
BEFORE INSERT ON medaltype
FOR EACH ROW
BEGIN

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
            'medaltype',
            'ID_MEDALTYPE',
            'NULL',
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TYPENAME IS NOT NULL THEN
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
            'medaltype',
            'TYPENAME',
            'NULL',
            NEW.TYPENAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_medaltype
BEFORE UPDATE ON medaltype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
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
            'medaltype',
            'ID_MEDALTYPE',
            OLD.ID_MEDALTYPE,
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TYPENAME != OLD.TYPENAME THEN
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
            'medaltype',
            'TYPENAME',
            OLD.TYPENAME,
            NEW.TYPENAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;