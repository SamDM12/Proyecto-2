USE ParalympicGames;
CREATE TABLE EventTable (
    ID_Event INT AUTO_INCREMENT PRIMARY KEY,
    ID_Competition INT,
    ID_Paralympic INT,
    ID_Competitor INT,
    EventDate DATE,
    FOREIGN KEY (ID_Competition) REFERENCES competition(ID_Competition) ON DELETE SET NULL,
    FOREIGN KEY (ID_Paralympic) REFERENCES paralympic(ID_Paralympic) ON DELETE SET NULL,
    FOREIGN KEY (ID_Competitor) REFERENCES competitor(ID_Competitor) ON DELETE SET NULL
);
