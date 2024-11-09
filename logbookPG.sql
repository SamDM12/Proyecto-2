USE ParalympicGames;
CREATE TABLE Log (
    logId INT(10) PRIMARY KEY,
    schemaName VARCHAR(10) UNIQUE NOT NULL,
    tableName VARCHAR(30) UNIQUE NOT NULL,
    fieldName VARCHAR(30) UNIQUE NOT NULL,
    previousValue VARCHAR(100) UNIQUE NOT NULL,
    currentValue VARCHAR(100)
);

ALTER TABLE Log
ADD change_date DATE,
ADD creation_date DATE,
ADD creation_user VARCHAR(10);