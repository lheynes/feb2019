/* 				# HOW TO CREATE A NEW TABLE WITH COLLUMNS AND ADD DATA INTO THOSE COLUMNS
 */

create table departments (
    department varchar(100),
    division varchar(100),
    primary key (department)
  );


insert into departments values ('Clothing','Home');
insert into departments values ('Grocery','Home');
insert into departments values ('Decor','Home');
insert into departments values ('Furniture','Home');
insert into departments values ('Computers','Electronics');
insert into departments values ('Device Repair','Electronics');
insert into departments values ('Phones & Tablets','Electronics');
insert into departments values ('Garden','Outdoors');
insert into departments values ('Camping & Fishing','Outdoors');
insert into departments values ('Sports','Outdoors');
insert into departments values ('Children Clothing','Kids');
insert into departments values ('Toys','Kids');
insert into departments values ('Vitamins','Health');
insert into departments values ('Pharmacy','Health');
insert into departments values ('First Aid','Health');
insert into departments values ('Automotive','Hardware');
insert into departments values ('Tools','Hardware');
insert into departments values ('Jewelry','Fashion');
insert into departments values ('Beauty','Fashion');
insert into departments values ('Cosmetics','Fashion');
insert into departments values ('Books','Entertainment');
insert into departments values ('Games','Entertainment');
insert into departments values ('Music','Entertainment');
insert into departments values ('Movies','Entertainment');
	
	
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


                #Check DB Space

sp_spaceused

                            #SELECT GREATER THAN, LESS THAN, = TO STATEMENTS

SELECT date, lindley_tickets 
FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets > '10'
SELECT TOP 4
ORDER BY desc

SELECT date, lindley_tickets FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets < '10'

SELECT date, lindley_tickets 
FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets >= '10'


                #HOW to Select multiple data-sets and order it by a specific column
                
                In the example below these selected data-sets will be displayed and order by the date column
                
SELECT date, ast_total_tickets, brian_tickets, mavuto_tickets, lindley_tickets 
FROM [AST Feb 2019 Complete$]
WHERE ast_total_tickets >= '10'
ORDER BY date


				#HOW TO USE MULTIPLE CONDITION STATEMENTS - Using Operators: WHERE, AND, OR, NOT
                
                #Select data from a table where two conditions must be met i.e. the Department MUST = CLOTHING and the SALARY must > 90 000
SELECT *
FROM employees
WHERE department = 'Clothing' 
AND salary > 90000

                #Select data from a table where one OR the otehr condition can be met i.e. department MUST = Clothing OR salary can > 90 000 (this is an either or statement)
                
                
SELECT *
FROM employees
WHERE department = 'Clothing' 
OR salary > 90000


                #Select data from a table where multiple conditions MUST BE MET i.e. Where ALL the conditions are compulsory, the parantheses () below ensures that the statement within them get's evaluated as ONE STATEMENT. This means that salary MUST < 40000 and department must = Clothing and must also = Pharmacy
                
SELECT *
FROM employees
WHERE salary < 40000
AND (department = 'Clothing'
OR department ='Pharmacy')


                /* How to use the OR, the ! (bang) and the <> operators to select data in a column where a specific data-set/piece of data is NOT pressent
                The below example will return all datasets/data rows where the column "lindley_tickets" is NOT = 0
                The ! (bang) turns the = sign into a "not equal" statement
                The less than and greater than operators used together will also turn the statement into a NOT EQUAL to statement, i.e. it will resturn all the records in the column "lindley_tickets" except for the the records that is = to 0. */


SELECT lindley_tickets
FROM [AST Feb 2019 Complete$]
WHERE NOT lindley_tickets = '0'

SELECT lindley_tickets
FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets != '0'

SELECT lindley_tickets
FROM [AST Feb 2019 Complete$]
WHERE lindley_tickets <> '0'


                /* #How to use the IS and NULL operator to return all NULL data rows in a specified column
                */      

SELECT *
FROM employees
WHERE email IS NULL


                /* #How to use the IN operator instead of using multiple OR operators in the same statement
                The example below will query the employees table and the department column and only return data rows that contains Sports, First Aid, Toys and Garden */
                
SELECT *
FROM employees
WHERE department IN ('Sports','First Aid','Toys','Garden')


                /* #How to use the BETWEEN operator
                The below example will return all data rows where the column 'ast_total_worked' contains values between 20 AND 60 */

SELECT date, ast_total_worked
FROM [AST Feb 2019 Complete$]
WHERE ast_total_worked BETWEEN 20 AND 60


                /* #How to use the OR and AND operators to select multiple datasets from multiple columns */
                
SELECT first_name, hire_date
FROM employees
WHERE salary > 165000
AND department = 'Sports'
OR (department = 'Sports' AND gender = 'M');

SELECT *
FROM employees
WHERE gender = 'M'
  AND department = 'Automotive'
  AND salary > 40000
  AND salary < 100000
  OR (gender = 'F' AND department = 'Toys');

                /* #Using the ORDER BY Operator
                #The ORDER BY operator by lists data rows from smallest to largest and alphabetical order by default. (ORDER by 1 does the same as just using ORDER BY)
                #The DESC operator lists data rows from largest to smallest values
                #The LIMIT operator sets a limit to how many records are returned
                #The SELECT TOP command is used in MS SQL, the LIMIT command does not work in MS SQL DBs
                #The FETCH FIRST 10 ROWS ONLY does the same as the LIMIT and SELECT TOP 10 commands */

SELECT * FROM [AST Feb 2019 Complete$]
ORDER BY date 

SELECT DISTINCT department
FROM employees
ORDER BY 1

SELECT * FROM [AST Feb 2019 Complete$]
ORDER BY date desc


SELECT DISTINCT department
FROM employees
ORDER BY 1
LIMIT 10


/*  */#(FOR MS SQL)
SELECT TOP 10 airtime_issues 
FROM [AST Feb 2019 Complete$]
ORDER BY 1

SELECT DISTINCT department
FROM employees
ORDER BY 1
FETCH FIRST 10 ROWS ONLY


                /* #Using the DISTINCT operator
                This is usefull when you have multiple data rows with the same name in the same column, but you would just liek to count how many unique instances of those data rows there */
                
SELECT DISTINCT department
FROM employees

SELECT * 
FROM [AST Feb 2019 Complete$]


SELECT date, ast_total_worked, brian_tickets, mavuto_tickets, lindley_tickets 
FROM [AST Feb 2019 Complete$]
ORDER BY date desc;


                            /* #Using the AND & OR operators for large statements
                            #Practice Scenario
                            Write a query that returns students based on the following criteria: 
                            The student must not be older than age 20 if their student_no is either between 3 and 5 or their student_no is 7. 
                            Your query should also return students older than age 20 but in that case they must have a student_no that is at least 4.  */


SELECT *
FROM students
WHERE ((student_no BETWEEN 3 AND 5
OR student_no = 7) AND age < 20)
OR (student_no >= 4 AND age > 20 )


Select * FROM [AST Feb 2019 Complete$]



SELECT * FROM
[ast feb 2019 complete$]

SELECT brian_tickets FROM
[AST Feb 2019 complete$]

SELECT TOP 20 date, lindley_tickets, brian_tickets, mavuto_tickets, ast_total_worked
FROM [AST Feb 2019 Complete$]
WHERE date != '2019-01-01'
ORDER BY 1;

