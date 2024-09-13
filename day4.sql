-- drop database a;
-- drop database students;


create database a;
use a ;
create table regex(regex1 int ,  regex2 varchar(90) ,regex3 varchar(90));
select * from regex;
insert into regex(regex1 , regex2 , regex3) value(1,'a','b') , (2,'a','b') , (3,'a','b');
ALTER TABLE regex ADD COLUMN new_column int;

delete from regex where regex1=1;

CREATE DATABASE employe;
use employe;
CREATE TABLE Employee( Employeeid int ,
 FirstName varchar(90) , LastName varchar(90) , 
 Position varchar(90) , Salarye int , HireDate varchar(90));
insert into Employee( Employeeid , FirstName , LastName ,
Position , Salarye , HireDate ) value (101 , 'john', 'doer' ,
' Develope' , 60000.00 , '2020-03-15'),(102, 'jane' ,  'smithr' , 
'manager' , 75000.00 ,'2019-06-01');
select * from Employee;
insert into Employee( Employeeid , FirstName , LastName ,
Position , Salarye , HireDate ) value (103, 'john' , 'son' 
, 'developer' , '58000.00' , '2018-11-22'),(104 , 'michale' , 
'brown' , 'intern' , 30000.00 , '2022-01-10'),(105, 'sara' , 'davi' 
, 'desiner' , 55000.00 , '2021-07-30'), (106 , 'davi' , 'wilson'
, 'developer' , 62000.00 , '2021-05-25'),(107, 'laur' , 'martine'
,'manager' , '70000.00' , '2017-12-15') , (108, 'james', 
'anderso' , 'intern' , 29000.00 , '2023-02-20'),(109,'lisa' 
, 'thomas' , 'designer' , 50000.00 , '2020-09-10'),(110,'kevi'
, 'taylor' , 'developer' , 64000.00 , '2022-04-05');

select * from Employee;

select FirstName , LastName  from Employee;
 select * from Employee where Employeeid=101;
select * from Employee where Salary > 50000;
 
