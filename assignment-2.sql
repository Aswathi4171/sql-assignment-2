use employee;
show tables;
select distinct salary from employees;
select age as employee_age, salary as employee_salary from employees;
select * from employees where salary > 50000 and hire_date < '2016-01-01';
select * from employees where designation is null;
select * from employees where designation is null;
select * from employees where designation = '';
select * from employees order by department_id asc, salary desc;
select * from employees where hire_date >= '2018-01-01' and hire_date < '2019-01-01' order by hire_date asc limit 5;
select * from employees;
use employee;
INSERT INTO departments (department_id, department_name) VALUES (1, 'IT'), (2, 'HR'), (3, 'Finance'), (4, 'Marketing');
INSERT INTO location (location_id, location) VALUES (1, 'Kochi'), (2, 'Thiruvananthapuram'), (3, 'Kozhikode'), (4, 'Kollam');
SHOW COLUMNS FROM employees LIKE 'gender';
ALTER TABLE employees MODIFY gender VARCHAR(10);
select * from employees;
INSERT INTO employees
(employee_id, employee_name, gender, age, hire_date,
 designation, department_id, location_id, salary)
VALUES
(101, 'Arun', 'Male', 25, '2018-01-15', 'Data Analyst', 1, 1, 45000),
(102, 'Anu', 'Female', 28, '2015-06-10', 'HR Analyst', 2, 2, 55000),
(103, 'Rahul', 'Male', 30, '2017-03-20', 'Data Scientist', 1, 3, 65000),
(104, 'Neeraja', 'Female', 24, '2018-05-12', 'Financial Analyst', 3, 1, 48000),
(105, 'Vishnu', 'Male', 29, '2014-11-05', 'Software Developer', 1, 4, 70000),
(106, 'Priya', 'Female', 27, '2019-02-18', 'Data Analyst', 3, 2, 52000),
(107, 'Akil', 'Male', 32, '2016-07-25', 'Marketing Executive', 4, 3, 40000),
(108, 'Diya', 'Female', 26, '2018-09-10', 'HR Executive', 2, 4, 42000);
select * from employees;
select * from departments;
select * from location;
select * from employees;
SELECT 
    e.employee_id,
    e.employee_name,
    e.designation,
    d.department_name,
    l.location,
    e.salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
JOIN location l
    ON e.location_id = l.location_id;
   SELECT e.employee_name, e.designation, d.department_name FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;  
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1;
SELECT AVG(salary) AS average_salary FROM employees;
SELECT d.department_name, COUNT(e.employee_id) AS total_employees 
FROM departments d LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM departments d INNER JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
SELECT d.department_name, AVG(e.salary) AS average_salary FROM departments d INNER JOIN employees e ON d.department_id = e.department_id GROUP BY d.department_id, d.department_name;
SELECT d.department_name, AVG(e.salary) AS average_salary FROM departments d INNER JOIN employees e ON d.department_id = e.department_id GROUP BY d.department_id, d.department_name HAVING AVG(e.salary) > 50000;
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;
SELECT l.location_id, e.employee_name FROM employees e RIGHT JOIN location l ON e.location_id = l.location_id;