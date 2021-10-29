USE AdventureWorks2019
GO

-- format datetime values - 07/01/2009
SELECT FORMAT(ModifiedDate, 'dd/MM/yyyy') AS Date  
FROM Person.Person
GO

-- 07/01/2009, 12:00:00
SELECT FORMAT(ModifiedDate, 'dd/MM/yyyy, hh:mm:ss') AS Date  
FROM Person.Person
GO

-- Wednesday, January, 2009
SELECT FORMAT(ModifiedDate, 'dddd, MMMM, yyyy') AS Date  
FROM Person.Person
GO

-- quarta-feira, janeiro, 2009
SET LANGUAGE 'Brazilian' -- or SET LANGUAGE 'Portuguese'
SELECT FORMAT(ModifiedDate, 'dddd, MMMM, yyyy') AS Date  
FROM Person.Person
GO

-- jan 07 2009
SET LANGUAGE 'Brazilian' 
SELECT FORMAT(ModifiedDate, 'MMM dd yyyy') AS Date  
FROM Person.Person
GO

-- 07/01/2009
SELECT FORMAT(ModifiedDate, 'd', 'pt-BR') AS Date  
FROM Person.Person
GO

-- SYSDATETIME() - server hour 
SELECT SYSDATETIME() AS ServerHour
GO

-- Server hour on UTC format
SELECT SYSDATETIMEOffset() as ServerHourUtc
GO

-- get hour in this moment with utc pattern 
SELECT GETUTCDATE() as UtcDate
GO

-- add days to date
DECLARE @currentDate DATETIME
SET @currentDate=GETDATE()
 
SELECT DATEADD(DAY, 1, @currentDate) AS NewDate;

-- add months 
SELECT DATEADD(MONTH, 1, @currentDate) AS NewDate;

-- add months 
SELECT DATEADD(YEAR, 1, @currentDate) AS NewDate;

-- remove days to date 
SELECT DATEADD(DAY, -1, @currentDate) AS NewDate;