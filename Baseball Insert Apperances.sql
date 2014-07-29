Use Baseball
GO
CREATE TABLE Appearances
(yearID int,
teamID	varchar(15),
lgID varchar(5),
playerID varchar(15) not null references masterlist(playerID),
G_all int,
GS int,
G_batting int,
G_defense int,
G_p int,
G_c int,
G_1b int,
G_2b int,
G_3b int,
G_ss int,
G_lf int,
G_cf int,
G_rf int,
G_of int,
G_dh int,
G_ph int,
G_pr int



)
GO
BULK
INSERT Appearances
FROM 'c:\Users\Sean\MLB Data\Appearances.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

