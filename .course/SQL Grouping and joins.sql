--Arithmetic operators
--Aggregation
--Group by
--Order by
--Joins

USE human_resourcesDB;
--Executed

SELECT* FROM hr_dataTB;
--Executed

SELECT* FROM salesTB;
--Executed

SELECT staffID, (Q1+Q2) AS half_year_sales FROM salesTB;
--Executed

SELECT staffID, (Q1+Q2+Q3+Q4) AS total_year_sales FROM salesTB;
--Executed

SELECT*, (salary * 0.2) AS bonus FROM hr_dataTB;
--Executed

SELECT sum(salary) AS total_salary FROM hr_dataTB;
--Executed

SELECT round (sum(salary),2) AS total_rounded FROM hr_dataTB;
--Executed

SELECT  round(sum(salary),2) AS total_rounded, 
		round(max(salary),2) AS max_salary,
		round(min(salary),2) AS min_salary
 FROM hr_dataTB;
 --Executed

 SELECT round(sum(Q1+Q2),2) AS half_year, 
		round(max(Q1+Q2),2) AS max_salary,
		round(min(Q1+Q2),2) AS min_salary
 FROM salesTB;
 --Executed

 SELECT round(sum(Q1+Q2),2) AS half_year,
		round(avg(Q1+Q2),2) AS avg_salary,
		round(max(Q1+Q2),2) AS max_salary,
		round(min(Q1+Q2),2) AS min_salary
 FROM salesTB;
 --Executed

 SELECT* FROM hr_dataTB;
 --Executed

 SELECT department, salary FROM hr_dataTB;
 --Executed

 SELECT department, round(sum(salary),2) AS total_salary 
	FROM hr_dataTB
	GROUP BY department;
--Executed

SELECT* FROM hr_dataTB ORDER BY salary DESC;
--Executed

SELECT* FROM hr_dataTB ORDER BY last_name ASC;
--Executed

SELECT department, round(sum(salary),2) AS total_salary 
	FROM hr_dataTB
	GROUP BY department
	ORDER BY total_salary ASC;
--Executed

SELECT * FROM hr_dataTB [LEFT]JOIN salesTB ON ID = staffID;
--Executed

SELECT S.staffID,H.first_name, H.department, H.salary, S.Q1, S.Q2 
	FROM hr_dataTB H 
	INNER JOIN salesTB S 
	ON H.ID = S.staffID;
--Executed

