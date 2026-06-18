--Import data
--Querying data in the database
--SELECT with DISTINCT, WHERE, LIKE, IN, BETWEEN
--Arithmetic functions
--Aggregated functions
--Summarisation GROUP BY
--Sorting ORDER BY

CREATE database human_resourcesDB
--Executed
USE human_resourcesDB
--Executed

--import hr data using rclick DB / Tasks / Import flat file

SELECT* from hr_dataTB
--Executed

--import sales data

SELECT* from q_sales_dataTB
--Executed

EXEC sp_rename 'q_sales_dataTB', 'salesTB'
--Executed

SELECT* from salesTB
--Executed

SELECT* from hr_dataTB
--Executed

SELECT id, first_name, salary FROM hr_dataTB
--Executed

SELECT* from hr_dataTB WHERE department = 'Corporate'; 
--Executed

SELECT* from hr_dataTB WHERE department = 'Private Individuals' AND salary >4000;
--Executed

SELECT DISTINCT department FROM hr_dataTB;
--Executed

SELECT* from hr_dataTB WHERE salary BETWEEN 4500 AND 5500;
--Executed

SELECT* from hr_dataTB WHERE first_name LIKE 'A%';
--Executed

SELECT* from hr_dataTB WHERE first_name LIKE '_o%';
--Executed
