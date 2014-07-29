Use Baseball
GO
CREATE TABLE AwardsSharePlayers
(awardID varchar(50),
yearID int,
lgID varchar(5),
playerID varchar(15) REFERENCES MasterList(playerID),
pointsWon float,
pointsMax int,
votesFirst float,
)
GO
BULK
INSERT AwardsSharePlayers
FROM 'c:\Users\Sean\MLB Data\AwardsSharePlayers.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

