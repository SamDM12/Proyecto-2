USE ParalympicGames;
CREATE TABLE WorldRecord (
    ID_WorldRecord INT AUTO_INCREMENT PRIMARY KEY,
    RecordDescription VARCHAR(255),
    ID_Country INT,
    ID_Competition INT,
    ID_Paralympic INT,
    ID_Person INT,
    FOREIGN KEY (ID_Competition) REFERENCES Competition(ID_Competition) ON DELETE SET NULL,
    FOREIGN KEY (ID_Country) REFERENCES Country(ID_Country) ON DELETE SET NULL,
    FOREIGN KEY (ID_Paralympic) REFERENCES Paralympic(ID_Paralympic) ON DELETE SET NULL,
    FOREIGN KEY (ID_Person) REFERENCES Person(ID_Person) ON DELETE SET NULL
);
