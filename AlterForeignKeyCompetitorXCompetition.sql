USE ParalympicGames;
ALTER TABLE competitorxcompetition
DROP FOREIGN KEY competitorxcompetition_ibfk_1;

ALTER TABLE competitorxcompetition
ADD CONSTRAINT ID_CompetitionCompetitorXCompetition
FOREIGN KEY (ID_Competition) REFERENCES Competition(ID_Competition) ON DELETE SET NULL;

ALTER TABLE competitorxcompetition
ADD CONSTRAINT ID_CompetitorCompetitorXCompetition
FOREIGN KEY (ID_Competitor) REFERENCES Competitor(ID_Competitor) ON DELETE SET NULL;