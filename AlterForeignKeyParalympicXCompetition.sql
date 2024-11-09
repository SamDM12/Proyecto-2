USE ParalympicGames;

ALTER TABLE paralympicxcompetition
ADD CONSTRAINT ID_ParalympicPXC
FOREIGN KEY (ID_Paralympic) REFERENCES Paralympic(ID_Paralympic) ON DELETE SET NULL;

ALTER TABLE paralympicxcompetition
ADD CONSTRAINT ID_CompetitionPXC
FOREIGN KEY (ID_Competition) REFERENCES Competition(ID_Competition) ON DELETE SET NULL;