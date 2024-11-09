USE ParalympicGames;
ALTER TABLE Competitor
DROP FOREIGN KEY competitor_ibfk_1;

ALTER TABLE Competitor
ADD CONSTRAINT ID_PersonCompetitor
FOREIGN KEY (ID_Person) REFERENCES Person(ID_Person) ON DELETE SET NULL;

ALTER TABLE Competitor
DROP FOREIGN KEY competitor_ibfk_2;

ALTER TABLE Competitor
ADD CONSTRAINT ID_TeamCompetitor
FOREIGN KEY (ID_Team) REFERENCES Team(ID_Team) ON DELETE SET NULL;