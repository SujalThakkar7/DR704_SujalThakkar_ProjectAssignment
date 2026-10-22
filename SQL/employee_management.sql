-- Question 1: Create both tables and insert the required records.

-- CREATE TABLE

CREATE TABLE Departments (
department_id INT PRIMARY KEY, 
department_name VARCHAR(50),
location VARCHAR(50)
);

CREATE TABLE employees (
employee_id INT PRIMARY KEY, 
employee_name VARCHAR(100),
email VARCHAR(100),
salary DECIMAL(10,2),
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id),
City VARCHAR(50),
joining_date DATE
);

-- INSERT RECORDS

INSERT INTO departments 
(department_id, department_name, location)
VALUES
(1, 'IT', 'Mumbai'),
(2, 'HR', 'Pune'),
(3, 'Finance', 'Nashik'),
(4, 'Sales', 'Gujarat'),
(5, 'Testing', 'Chennai');

INSERT INTO employees
(employee_id, employee_name, email, salary, department_id, city, joining_date)
VALUES
(1, 'Ankush', 'ankush@example.com', 27850.00, 1, 'Mumbai', '2025-11-27'),
(2, 'Himank', 'himank@example.com', 100279.25, 1, 'Mumbai', '2024-08-19'),
(3, 'Krish', 'krish@example.com', 18562.61, 2, 'Pune', '2026-01-09'),
(4, 'Sam', 'Sam@example.com', 61526.54, 2, 'Pune', '2025-03-12'),
(5, 'Rakesh', 'rakesh@example.com', 36599.13, 3, 'Nashik', '2023-09-03'),
(6, 'Krutik', 'krutik@example.com', 45632.74, 3, 'Nashik', '2024-08-16'),
(7, 'Aman', 'aman@example.com', 85634.88, 4, 'Gujarat', '2023-05-07'),
(8, 'Salman', 'salman@example.com', 123569.02, 4, 'Gujarat', '2026-04-21'),
(9, 'Bhavya', 'bhavya@example.com', 25521.23, 5, 'Chennai', '2022-06-15'),
(10, 'Sujal', 'sujal@example.com', 96327.98, 5, 'Chennai', '2021-10-19');

-- Question 2: Display all employees; then display only employee names and salaries

-- DISPLAY ALL EMPLOYEES

Select * From employees

-- DISPLAY ONLY EMPLOYEE NAMES AND SALARIES

Select employee_name, salary
FROM employees;

-- Question 3: Find salaries above 50000; employees in Mumbai; salaries between 30,000 and 70,000; employees in Mumbai or Pune

-- FIND SALARIES ABOVE 50000

Select * From employees
WHERE salary > 50000;

-- EMPLOYEES IN MUMBAI

Select * From employees
WHERE city = 'Mumbai';

-- SALARIES BETWEEN 30000 AND 70000

Select * From employees
WHERE Salary Between 30000 AND 70000;

-- EMPLOYEES IN MUMBAI OR PUNE

Select * From employees
WHERE city = 'Mumbai' OR city = 'Pune';

-- Question 4: Display distinct cities; update one salary; delete one employee; sort employees by salary from highest to lowest.

-- DISPLAY DISTINCT CITIES 

Select Distinct City
From Employees;

-- UPDATE ONE SALARY 

UPDATE Employees
SET salary = 124256.74
WHERE employee_name = 'Sujal';

-- DELETE ONE EMPLOYEE

Delete From employees 
WHERE employee_id = 10;

-- SORT EMPLOYEES BY SALARY FROM HIGHEST TO LOWEST 

SELECT * FROM employees 
ORDER BY salary DESC;

-- Question 5: Count employees by department; show departments having more than two employees. 

-- COUNT EMPLOYEES BY DEPARTMENT 

SELECT department_name, COUNT(*) AS total_employees
FROM departments
GROUP BY department_name

-- SHOW DEPARTMENTS HAVING MORE THAN TWO EMPLOYEES

SELECT department_name, COUNT(*) AS total_employees
FROM departments
GROUP BY department_name
HAVING COUNT (*) > 2;

-- Question 6: Find the total, average, minimum, and maximum salary.

-- FIND THE TOTAL 

Select SUM(salary)
From employees;

-- FIND THE AVERAGE 

Select AVG(salary)
From employees;

-- FIND THE MINIMUM 

Select MIN(salary)
From employees;

-- FIND THE MAXIMUM 

Select MAX(salary)
From employees; 

-- Question 7: Use INNER JOIN to show employee name, salary and department; use LEFT JOIN to show all departments and matching employees.

-- USE INNER JOIN TO SHOW EMPLOYEE NAME, SALARY AND DEPARTMENT

Select 
e.employee_name,
e.salary,
d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id=d.department_id

-- USE LEFT JOIN TO SHOW ALL DEPARTMENTS AND MATCHING EMPLOYEES 

SELECT *
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id;

-- Question 8: Demonstrate COMMIT, ROLLBACK and SAVEPOINT using suitable statements.

-- DEMONSTRATE COMMIT

BEGIN;

UPDATE employees
SET salary = 60000.99
WHERE employee_id = 3;

COMMIT;

-- DEMONSTRATE ROLLBACK 

BEGIN;

UPDATE employees
SET salary = 70000.99
WHERE employee_id = 3;

ROLLBACK;

-- DEMONSTRATE SAVEPOINT 

BEGIN;

UPDATE employees
SET salary = 65000
WHERE employee_id = 3;

SAVEPOINT salary_savepoint;

UPDATE employees
SET salary = 80000
WHERE employee_id = 3;

ROLLBACK TO SAVEPOINT salary_savepoint;

ROLLBACK;

