Use Baseball
GO
CREATE TABLE ManagersHalf
(playerID varchar(15) references MasterList(playerID),
yearid int,
teamID varchar(5),
lgID varchar(5),
inseason	int,
half int,
G	int,
W	int,
L	int,
ranking	int,

)
GO
BULK
INSERT ManagersHalf
FROM 'c:\Users\Sean\MLB Data\ManagersHalf.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

