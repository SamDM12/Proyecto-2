DELIMITER //
 DROP TRIGGER ParalympicGames.before_insert_phonetype;
 DROP TRIGGER ParalympicGames.before_update_phonetype;
-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_phonetype
BEFORE INSERT ON phonetype
FOR EACH ROW
BEGIN

    IF NEW.ID_PHONETYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'ID_PHONETYPE',
            'NULL',
            NEW.ID_PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PHONETYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'PHONETYPE',
            'NULL',
            NEW.PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_phonetype
BEFORE UPDATE ON phonetype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PHONETYPE != OLD.ID_PHONETYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'ID_PHONETYPE',
            OLD.ID_PHONETYPE,
            NEW.ID_PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PHONETYPE != OLD.PHONETYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'PHONETYPE',
            OLD.PHONETYPE,
            NEW.PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

DELIMITER ;