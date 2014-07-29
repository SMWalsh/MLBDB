Use Baseball
GO
CREATE TABLE MasterList
(playerID varchar(15) NOT NULL PRIMARY KEY,
birthYear int,
birthMonth int,
birthDay int,
birthCountry varchar(MAX),
birthState varchar(MAX),
birthCity	varchar(MAX),
deathYear int,
deathMonth int,
deathDay int,
deathCountry varchar(MAX),
deathState varchar(MAX),
deathCity varchar(MAX),
nameFirst varchar(MAX),
nameLast varchar(MAX),
nameGiven varchar(MAX),
weightLBS int,
height int,
bats char,
throws char,
debut date,
finalGame date,
retroID varchar(MAX),
bbrefID varchar(MAX)


)
GO
BULK
INSERT MasterList
FROM 'c:\Users\Sean\MLB Data\Master.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

