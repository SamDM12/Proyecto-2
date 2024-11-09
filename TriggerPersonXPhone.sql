DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_personXphone
BEFORE INSERT ON personXphone
FOR EACH ROW
BEGIN

    IF NEW.ID_PHONEXPERSON IS NOT NULL THEN
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
            'personXphone',
            'ID_PHONEXPERSON',
            'NULL',
            NEW.ID_PHONEXPERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
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
            'personXphone',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PHONE IS NOT NULL THEN
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
            'personXphone',
            'ID_PHONE',
            'NULL',
            NEW.ID_PHONE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_personXphone
BEFORE UPDATE ON personXphone
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PHONEXPERSON != OLD.ID_PHONEXPERSON THEN
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
            'personXphone',
            'ID_PHONEXPERSON',
            OLD.ID_PHONEXPERSON,
            NEW.ID_PHONEXPERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON != OLD.ID_PERSON THEN
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
            'personXphone',
            'ID_PERSON',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_PHONE != OLD.ID_PHONE THEN
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
            'personXphone',
            'ID_PHONE',
            OLD.ID_PHONE,
            NEW.ID_PHONE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;