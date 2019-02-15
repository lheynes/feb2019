/* 				# HOW TO CREATE A NEW TABLE WITH COLLUMNS AND ADD DATA INTO THOSE COLUMNS
 */
create table Shoes
  (
  Id	char (10)	PRIMARY KEY,
  Brand	char (10)	NOT NULL,
  Type	char (250)	NOT NULL,
  Color	char (250)	NOT NULL,
  Price	decimal (8,2)	NOT NULL,
  Description	Varchar (750)	NULL
  );

  INSERT INTO Shoes
		  (Id
		  ,Brand
		  ,Type
		  ,Color
		  ,Price
		  ,Description
		  )
  VALUES
		  ('14535974'
		  ,'Gucci'
		  ,'Slippers'
		  ,'Pink'
		  ,'695.00'
		  ,NULL
		  );
	
	
/* 				# HOW TO SELECT AND DISPLAY ALL INFORMATION FROM A TABLE
 */
Select * FROM Shoes



/* 				# HOW TO SELECT ALL DATA AND ORDER BY ALPHABETICAL and NON ALPHABETICAL ORDER
 */
Select * From [ICFXHO_IA].[dbo].[AndroidDevice]
Select * From [ICFXHO_IA].[dbo].[AndroidDevice] Order By PositionLastUpdateTime
Select * From [ICFXHO_IA].[dbo].[AndroidDevice] Order By PositionLastUpdateTime Desc


/* 				# HOW TO SELECT ALL DATA within a Specified Collumn THAT is EQUAL to and NOT EQUAL to a Certain VALUE
 */
Select * From [ICFXHO_IA].[dbo].[AndroidDevice]
Select * From [ICFXHO_IA].[dbo].[AndroidDevice] Where MukuruId = 0
Select * From [ICFXHO_IA].[dbo].[AndroidDevice] Where MukuruId <> 0


/* 				# HOW TO INSERT A NEW RECORD INTO AN EXISTING TABLE
 */
SELECT TOP (1000) [AccountOwner]
      ,[AccountType]
      ,[AccountCcy]
      ,[ShowName]
      ,[CustomerType]
      ,[Balance]
      ,[LastUpdateTime]
      ,[PastelCode]
  FROM [ICFXHO_IA].[dbo].[Account]

Insert Into Account (
AccountOwner,
AccountType,
AccountCcy,
ShowName,
CustomerType,
Balance,
LastUpdateTime,
PastelCode 
)
Values (
'8706126305089',
'Laanie',
'ZAR',
'Heynes Lindley',
'Global Citizen',
'100000000',
'2018-10-08 06:13:02.770',
'0952'
)

/* 				# HOW TO UPDATE ALL ROWS IN A SPECIFIC COLLUMN
 */
UPDATE	Account Set	Balance = '100000000'


/* 				# HOW TO UPDATE A SPECIFIC COLLUMN IN A TABLE
 */		
 
Update CardPool set SequenceNumber = '50505050' where TransitOwnerId = 'SMH1616304565766'


				/* # HOW TO DELETE DATA FROM A SPECIFIC COLLUMN */
				
Delete From Shoes Where Color = 'Pink'


				/* # HOW TO CREATE & DELETE A DB & Table */

Create DATABASE "TestDB"
Drop DATABASE "TestDB"
Create TABLE 'TestTable'
Drop Table 'TestTable'

				/* #HOW TO DELETE ALL DATA WITHIN A TABLE */
				
Truncate Table 'TestTable'

/* 				#HOW TO ADD A COLLUMN TO A TABLE
 */
ALTER TABLE Shoes ADD Store VARCHAR

				/* #HOW TO DELETE A COLUMN FROM A TABL */

ALTER TABLE Shoes Drop Column Purchase


				/* #HOW TO SELECT SPECIFIC COLUMNS FROM A TABLE */

Select Brand, Price from Shoes

				/* HOW TO SELECT DISTINCT VALUES WITHIN A COLUMN AND EXCLUDE DUPLICATE VALUES */

Select Distinct Brand, Price from Shoes


/* 				Check DB Space
 */
sp_spaceused

/* 				#SELECT GREATER THAN, LESS THAN, = TO STATEMENTS

SELECT date, lindley_tickets 
FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets > '10'

SELECT date, lindley_tickets FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets < '10'

SELECT date, lindley_tickets 
FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets >= '10'





				#HOW TO DO AND STATEMENTS
SELECT *
FROM employees
WHERE department = 'Clothing' 
AND salary > 90000
