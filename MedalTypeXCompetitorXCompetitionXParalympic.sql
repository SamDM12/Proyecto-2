USE ParalympicGames;
CREATE TABLE MedalTypeXcompetitorXCompetitionXParalympic (
    ID_MedalTypeXcompetitorXCompetitionXParalympic INT PRIMARY KEY AUTO_INCREMENT,
    ID_MedalType INT,
    ID_Competitor INT,
    ID_Competition INT,
    ID_Paralympic INT,
    FOREIGN KEY (ID_MedalType) REFERENCES MedalType(ID_MedalType),
    FOREIGN KEY (ID_Competitor) REFERENCES Competitor(ID_Competitor),
    FOREIGN KEY (ID_Competition) REFERENCES Competition(ID_Competition),
    FOREIGN KEY (ID_Paralympic) REFERENCES Paralympic(ID_Paralympic)
);
