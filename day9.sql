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

use employe;

CREATE VIEW EZ_m as select 
FirstName , HireDate from Employee;

update EZ_m set FirstName="Rakesh" where HireDate = '2021-07-30' ;
select * from EZ_m where FirstName="Rakesh";

select * from EZ_m ;

DROP VIEW EZ_m;

-- Index 
-- retrieval easy 
-- types 
-- single column 
-- multi column Index
-- unique index 
-- clauster index 
-- non cluster index
use employe;
create index Index_name on Employee(Position);

create index Index_nam on Employee(Position ,  Employeeid); 
create fulltext index Index_na on Employee(HireDate);

create unique index Index_n on Employee(Employeeid);
create clustered index Index_ on Employee(Employeeid);