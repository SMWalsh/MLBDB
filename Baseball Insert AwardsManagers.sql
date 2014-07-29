Use Baseball
GO
CREATE TABLE AwardsManagers
(playerID varchar(15) REFERENCES MasterList(playerID),
awardID varchar(50),
yearID int,
lgID varchar(5),
tie varchar(50),
notes varchar(100)



)
GO
BULK
INSERT AwardsManagers
FROM 'c:\Users\Sean\MLB Data\AwardsManagers.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

