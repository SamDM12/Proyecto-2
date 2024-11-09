DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medalXcompetitionXcompetitor
BEFORE INSERT ON medalXcompetitionXcompetitor
FOR EACH ROW
BEGIN

    IF NEW.ID_MEDALXCOMPXCOMP IS NOT NULL THEN
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
            'medalXcompetitionXcompetitor',
            'ID_MEDALXCOMPXCOMP',
            'NULL',
            NEW.ID_MEDALXCOMPXCOMP,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDAL IS NOT NULL THEN
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
            'medalXcompetitionXcompetitor',
            'ID_MEDAL',
            'NULL',
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITORXCOMPETITION IS NOT NULL THEN
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
            'medalXcompetitionXcompetitor',
            'ID_COMPETITORXCOMPETITION',
            'NULL',
            NEW.ID_COMPETITORXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_medalXcompetitionXcompetitor
BEFORE UPDATE ON medalXcompetitionXcompetitor
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_MEDALXCOMPXCOMP != OLD.ID_MEDALXCOMPXCOMP THEN
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
            'medalXcompetitionXcompetitor',
            'ID_MEDALXCOMPXCOMP',
            OLD.ID_MEDALXCOMPXCOMP,
            NEW.ID_MEDALXCOMPXCOMP,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDAL != OLD.ID_MEDAL THEN
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
            'medalXcompetitionXcompetitor',
            'ID_MEDAL',
            OLD.ID_MEDAL,
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_COMPETITORXCOMPETITION != OLD.ID_COMPETITORXCOMPETITION THEN
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
            'medalXcompetitionXcompetitor',
            'ID_COMPETITORXCOMPETITION',
            OLD.ID_COMPETITORXCOMPETITION,
            NEW.ID_COMPETITORXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;