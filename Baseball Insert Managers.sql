Use Baseball
GO
CREATE TABLE Managers
(playerID varchar(15) references MasterList(playerID),
yearid date,
teamID varchar(5),
lgID varchar(5),
inseason	int,
G	int,
W	int,
L	int,
ranking	int,
plyrMgr char

)
GO
BULK
INSERT Managers
FROM 'c:\Users\Sean\MLB Data\Managers.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

