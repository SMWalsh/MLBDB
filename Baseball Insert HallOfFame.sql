Use Baseball
GO
CREATE TABLE HallOfFame
(playerID varchar(15) REFERENCES MasterList(playerID),
yearid int,
votedBy varchar(max),
ballots int,
needed int,
votes int,
inducted char,
category varchar(max),
needed_note varchar(15)

)
GO
BULK
INSERT HallOfFame
FROM 'c:\Users\Sean\MLB Data\HallOfFame.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

