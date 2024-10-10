create database Subquery;
use Subquery;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT
);
INSERT INTO Employees (employee_id, name, salary, department_id)
VALUES
(1, 'John', 50000, 101),
(2, 'Jane', 60000, 102),
(3, 'Michael', 70000, 101),
(4, 'Emily', 55000, 103),
(5, 'Daniel', 80000, 101);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'HR'),
(102, 'Sales'),
(103, 'IT');

--  1. Subquery for Maximum Salary: Write a query that finds all employees who earn the highest
--   salary in the company.
select name from Employees where(select max(salary) from Employees );
 
--  2. Subquery for Department with the Most Employees: Find the department with the highest
--  number of employees.

select department_name from Departments where department_id=(select department_id from Employees group by department_id order by count(employee_id) desc limit 1 );

--  3. Subquery with NOT IN: Find the employees who do not belong to department 102.
-- make change  
select name from Employees where department_id not in (select department_id from Departments where department_id  = 102);

--  4. Find Departments with Multiple Employees: Write a query to list all departments that have
--  more than one employee.
select department_id from employees e 
where exists (select 1 from Employees where department_id= e.department_id and salary>60000);


--  5. Subquery with BETWEEN: Find employees whose salary is between the average salary and
--  the highest salary in the company.

select employee_id from Employees where salary between (select vag(salary) from Employees) and (select max(salary) from Employees);