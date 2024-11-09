USE ParalympicGames;
-- ALTER TABLE Email
-- DROP FOREIGN KEY ID_Person;


ALTER TABLE competitorxdisability
ADD CONSTRAINT ID_CompetitorCompetitorXDisability
FOREIGN KEY (ID_Competitor) REFERENCES Competitor(ID_Competitor) ON DELETE SET NULL;

USE ParalympicGames;
-- ALTER TABLE Email
-- DROP FOREIGN KEY ID_Person;


ALTER TABLE competitorxdisability
ADD CONSTRAINT ID_DisabilityCompetitorXDisability
FOREIGN KEY (ID_Disability) REFERENCES Disability(ID_Disability) ON DELETE SET NULL;
