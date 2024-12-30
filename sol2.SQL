-- SOL2.15
-- INNER JOIN
SELECT Employees.*, Departments.name AS Department_Name, Departments.building AS Department_Building, Departments.budget AS Department_Budget
FROM Departments
INNER JOIN Employees
ON Departments.department_id = Employees.department_id;

-- SOL2.16
-- LEFT INCLUSIVE
SELECT Employees.*, Departments.name AS Department_Name, Departments.building AS Department_Building, Departments.budget AS Department_Budget
FROM Employees
LEFT JOIN Departments
ON Departments.department_id = Employees.department_id;

-- SOL2.17
SELECT Employees.*
FROM Employees
WHERE department_id IS NULL;

-- SOL2.18
-- Employees count
SELECT Employees.*, count(*)
FROM Employees
GROUP BY Employees.department_id
HAVING department_id NOT NULL;

-- SOL2.19
-- AVG_Salary_Department
SELECT Departments.name AS Department_Name,     COUNT(*) AS Total_Employees, AVG(salary) as AVG_Salary_Department
FROM Departments
INNER JOIN Employees
ON Departments.department_id = Employees.department_id
GROUP BY Employees.department_id
HAVING Employees.department_id IS NOT NULL;

-- SOL2.20
-- Max_Salary_Department
SELECT Departments.name AS Department_Name, Employees.name AS Employees_Name, MAX(salary) as Max_Salary_Department
FROM Departments
INNER JOIN Employees
ON Departments.department_id = Employees.department_id
GROUP BY Employees.department_id
HAVING Employees.department_id IS NOT NULL;

-- SOL2.21
-- ORDER BY seniority
SELECT Employees.name AS Employees_Name, Employees.seniority AS Employees_Seniority, Departments.name AS Department_Name
FROM Departments
INNER JOIN Employees
ON Departments.department_id = Employees.department_id
WHERE Employees.department_id IS NOT NULL
ORDER BY seniority;

-- SOL2.22
-- AVG Salary BY seniority
SELECT Employees.seniority AS Employees_Seniority,  ROUND(AVG(salary), 1) as AVG_Salary_Seniority
FROM Departments
INNER JOIN Employees
ON Departments.department_id = Employees.department_id
GROUP BY seniority
HAVING Employees.department_id IS NOT NULL
ORDER BY seniority;

-- SOL2.23
-- Part A add column
ALTER TABLE Departments ADD COLUMN number_employees INTEGER;
ALTER TABLE Departments ADD COLUMN avg_salary_department DECIMAL(10, 1);
ALTER TABLE Departments ADD COLUMN max_salary_department DECIMAL(10, 1);
ALTER TABLE Departments ADD COLUMN seniority_salary_department DECIMAL(10, 1);

-- Part b UPDATE ROWS
-- number_employees
UPDATE Departments
SET number_employees = (
    SELECT COUNT(*)
    FROM Employees
    WHERE Employees.department_id = Departments.department_id
);

-- avg_salary_department
UPDATE Departments
SET avg_salary_department = (
    SELECT AVG(salary)
    FROM Employees
    WHERE Employees.department_id = Departments.department_id
);

-- max_salary_department
UPDATE Departments
SET max_salary_department = (
    SELECT MAX(salary)
    FROM Employees
    WHERE Employees.department_id = Departments.department_id
);

-- seniority_salary_department
-- I don't Know
