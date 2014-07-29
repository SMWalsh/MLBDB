Use Baseball
GO
CREATE TABLE Salaries
(yearID int,
teamID varchar(15),
lgID varchar(5),
playerID varchar(15) references MasterList(playerID),
salary int

)
GO
BULK
INSERT Salaries
FROM 'c:\Users\Sean\MLB Data\Salaries.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

