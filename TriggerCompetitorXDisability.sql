DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competitorXdisability
BEFORE INSERT ON competitorXdisability
FOR EACH ROW
BEGIN

    IF NEW.ID_COMPETITORXDISABILITY IS NOT NULL THEN
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
            'competitorXdisability',
            'ID_COMPETITORXDISABILITY',
            'NULL',
            NEW.ID_COMPETITORXDISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR IS NOT NULL THEN
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
            'competitorXdisability',
            'ID_COMPETITOR',
            'NULL',
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_DISABILITY IS NOT NULL THEN
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
            'competitorXdisability',
            'ID_DISABILITY',
            'NULL',
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_competitorXdisability
BEFORE UPDATE ON competitorXdisability
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COMPETITORXDISABILITY != OLD.ID_COMPETITORXDISABILITY THEN
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
            'competitorXdisability',
            'ID_COMPETITORXDISABILITY',
            OLD.ID_COMPETITORXDISABILITY,
            NEW.ID_COMPETITORXDISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR != OLD.ID_COMPETITOR THEN
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
            'competitorXdisability',
            'ID_COMPETITOR',
            OLD.ID_COMPETITOR,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_DISABILITY != OLD.ID_DISABILITY THEN
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
            'competitorXdisability',
            'ID_DISABILITY',
            OLD.ID_DISABILITY,
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;