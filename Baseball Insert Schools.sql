Use Baseball
GO
CREATE TABLE Schools
(schoolID varchar(50) PRIMARY KEY,
schoolName	varchar(255),
schoolCity varchar(255),
schoolState varchar(2555),
schoolNick varchar(30),


)
GO
BULK
INSERT Schools
FROM 'c:\Users\Sean\MLB Data\Schools.csv'
WITH
(
FIELDTERMINATOR = ',',
FIRSTROW = 2,
ROWTERMINATOR = '\n'
)

