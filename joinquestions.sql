1. Employee and Department
o Question: Write a query to retrieve all employees along with their department
names.
o Tables: employees (id, name, department_id), departments (id, department_name)

CREATE DATABASE A_dd;
USE A_dd;
CREATE TABLE employees (id INT , emp_name varchar(200) , department_id int );
select * from employees;
insert into employees (id , emp_name , department_id) value (1, 'ram' , 10) , (2, 'shym' , 20);
create table departments (id int , department_name varchar(200));
select * from departments;
insert into departments (id , department_name) value (1 , 'bca') , (2 , 'bba');
select * from departments;

2. Customers and Orders
o Question: List all customers and the orders they have placed, including customers
who have not placed any orders.
o Tables: customers (id, customer_name), orders (id, customer_id, order_date)
CREATE DATABASE A_dd;
USE A_dd;
CREATE TABLE employees (id INT , emp_name varchar(200) , department_id int );
select * from employees;
insert into employees (id , emp_name , department_id) value (1, 'ram' , 10) , (2, 'shym' , 20);
create table departments (id int , department_name varchar(200));
select * from departments;
insert into departments (id , department_name) value (1 , 'bca') , (2 , 'bba');
select * from departments;

create table customers (id int , customer_name varchar(200));
insert into customers(id , customer_name) value (1, 'grima') , (2, 'komal');
create table orders(id int , customer_id int  , order_date date );
select * from orders;
insert into orders(id , customer_id , order_date) value (1,10, 2024-03-01) , (2 , 30 , 2024-04-02	);
