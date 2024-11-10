USE ParalympicGames;

-- DROP TABLE LOG;
CREATE TABLE Log (
    logId INT auto_increment KEY,
    schemaName VARCHAR(50) NOT NULL,
    tableName VARCHAR(50)  NOT NULL,
    fieldName VARCHAR(50)  NOT NULL,
    previousValue VARCHAR(100) NOT NULL,
    currentValue VARCHAR(100)
);

ALTER TABLE Log
ADD change_date DATE,
ADD creation_date DATE,
ADD creation_user VARCHAR(100);