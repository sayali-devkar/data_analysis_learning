USE sql_joins;

-- Q1) Display the employee name and their department name.
SELECT employees.name , departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

-- With aliases:
SELECT e.name , d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Q2) Display the employee name and salary along with their department name.
SELECT e.name , e.salary , d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Q3) Display the department name and the number of employees
-- working in each department.
SELECT d.department_name , COUNT(*)
FROM  departments d
INNER JOIN departments
ON e.department_id = d.department_id
GROUP BY department_id;

SELECT d.department_name, COUNT(*)
FROM departments d
INNER JOIN employees e
ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Q4) Display the names of employees who work in the IT department.
SELECT e.name 
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE department_name = 'IT';

-- Q5) Display the names and salaries of employees
-- who work in the Finance department.
SELECT e.name , e.salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE department_name = 'Finance';

-- Q6) Display the employee name, department name, and city
-- for employees who are from Pune.
SELECT e.name , d.department_name , e.city
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE city = 'Pune';

-- Q7) Display the employee name and department name
-- for employees whose salary is greater than 60000.
SELECT e.name , d.department_name 
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE salary > 60000;

-- Q8) Display the employee name, salary, and department name
-- for employees from Mumbai.
SELECT e.name , e.city , d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE city = 'Mumbai';

-- Q9) Display the department name and average salary
-- for each department.
SELECT d.department_name , AVG(salary)
FROM departments d
INNER JOIN employees e
ON e.department_id = d.department_id
GROUP BY department_name

-- Q10) Display the department name and total salary
-- for each department.
SELECT d.department_name , SUM(salary)
FROM departments d
INNER JOIN employees e
ON e.department_id = d.department_id
GROUP BY department_name ;

-- Q11) Display the department name and number of employees
-- for departments having more than 2 employees.
SELECT d.department_name , COUNT(*)
FROM departments d
INNER JOIN  employees e 
ON e.department_id = d.department_id
GROUP BY department_name
HAVING COUNT(*) > 2;

-- Q12) Display the names of employees who work in the IT
-- or Finance department.
SELECT e.name 
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE department_name = 'IT' OR department_name = 'Finance';

-- Q13) Display the department name and average salary
-- for departments whose average salary is greater than 60000.
SELECT d.department_name , AVG(salary)
FROM departments d
INNER JOIN employees e
ON e.department_id = d.department_id
GROUP BY department_name
HAVING AVG(salary) > 60000;

-- Q14) Display the department name and number of employees
-- for departments having more than 2 employees,
-- and sort the result by employee count from highest to lowest.
SELECT d.department_name , COUNT(*)
FROM departments d
INNER JOIN employees e
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(*) > 2 
ORDER BY COUNT(*) DESC ; 

-- Q15) Display the names and salaries of employees
-- who work in either IT or Finance
-- and have a salary greater than 65000.
SELECT e.name , e.salary 
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE (department_name = 'IT' OR department_name = 'Finance') AND salary > 65000;
