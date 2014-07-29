Use Baseball
GO
CREATE TABLE Teams
(yearID	int,
lgID varchar(5),
teamID varchar(5),
franchID varchar(15) REFERENCES TEAMSFRANCHISES(franchID),
divID varchar(5),
Ranking int,
G	int,
Ghome	int,
W	int,
L	int,
DivWin	char,
WCWin	char,
LgWin	char,
WSWin	char,
R	int,
AB	int,
H	int,
doubles int,
triples int,
HR	int,
BB	int,
SO	int,
SB	int,
CS	int,
HBP	int,
SF	int,
RA	int,
ER	int,
ERA	float,
CG	int,
SHO int,
SV	int,
IPouts	int,
HA	int,
HRA	int,
BBA	int,
SOA	int,
E	int,
DP	int,
FP	float,
name	varchar(max),
park	varchar(max),
attendance	int,
BPF	int,
PPF	int,
teamIDBR varchar(15),
teamIDlahman45 varchar(15),
teamIDretro varchar(15)


)
GO
BULK
INSERT Teams
FROM 'c:\Users\Sean\MLB Data\Teams.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

