Use Baseball
GO
CREATE TABLE AwardsShareManagers
(awardID varchar(50),
yearID int,
lgID varchar(5),
playerID varchar(15) REFERENCES MasterList(playerID),
pointsWon int,
pointsMax int,
votesFirst int,
)
GO
BULK
INSERT AwardsShareManagers
FROM 'c:\Users\Sean\MLB Data\AwardsShareManagers.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

