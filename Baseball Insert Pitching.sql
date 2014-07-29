Use Baseball
GO
CREATE TABLE Pitching
(playerID varchar(15) references MasterList(playerID),
yearID int,
stint int,
teamID varchar(15),
lgID varchar(15),
W	int,
L	int,
G	int,
GS	int,
CG	int,
SHO	int,
SV	int,
IPouts	int,
H	int,
ER	int,
HR	int,
BB	int,
SO	int,
BAOpp	float,
ERA	float,
IBB	int,
WP	int,
HBP	int,
BK	int,
BFP	int,
GF	int,
R	int,
SH	int,
SF	int,
GIDP int



)
GO
BULK
INSERT Pitching
FROM 'c:\Users\Sean\MLB Data\Pitching.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

