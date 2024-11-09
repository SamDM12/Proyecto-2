DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_team
BEFORE INSERT ON team
FOR EACH ROW
BEGIN
    -- Insertar registro para nuevo coach
    IF NEW.ID_Team IS NOT NULL THEN
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
            'team',
            'ID_Team',
            'NULL',
            NEW.ID_Team,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TeamName IS NOT NULL THEN
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
            'team',
            'TeamName',
            'NULL',
            NEW.TeamName,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.QuantityMembers IS NOT NULL THEN
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
            'team',
            'QuantityMembers',
            'NULL',
            NEW.QuantityMembers,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_team
BEFORE UPDATE ON team
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_Team != OLD.ID_Team THEN
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
            'team',
            'ID_Team',
            OLD.ID_Team,
            NEW.ID_Team,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TeamName != OLD.TeamName THEN
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
            'team',
            'TeamName',
            OLD.TeamName,
            NEW.TeamName,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.QuantityMembers != OLD.QuantityMembers THEN
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
            'team',
            'QuantityMembers',
            OLD.QuantityMembers,
            NEW.QuantityMembers,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

DELIMITER ;