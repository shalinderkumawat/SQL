CREATE DATABASE if not exists Employ;
use Employ;
CREATE TABLE em(em_id int ,emfirst varchar(200) , emlastname varchar(200) , emjobtitel varchar (900) , emsalary int , joindate date  );
ALTER table em add column emsalery int auto_increment ;
ALTER table em add column joindate date ;
select * from em;
insert into em(em_id  , emfirst , emlastname , emjobtitel , emsalery , joindate ) value (1, 'ram' , 'lal' , 'intern' , null , '2024-01-01') , 
 (2, 'shyam' , 'kumawat' , 'intern' , null , '2024-02-01') , (3, 'karan' , 'kumawat' , 'developer ' , null  , '2024-01-02') , 
 (4, 'shyam' , 'kumawat' , 'typer' , null , '2023-02-01') , (5, 'nannu' , 'kumawat' , 'javadeveloper' , null , '2023-01-01');
 
update em set emsalery=9000 where em_id=1;
update em set emsalery=900 where em_id=2;
update em set emsalery=90 where em_id=3;
update em set emsalery=5000 where em_id=4;
update em set emsalery=5500 where em_id=5;


SELECT em_id from em where emsalery=900;
SELECT emfirst , emlastname from em where em_id=1 or emsalery=900;
SELECT emfirst , emlastname from em where em_id=1 and joindate = 2024-01-01;
SELECT count(em_id) from em where emjobtitel='intern';
SELECT avg(emsalery) from em where  emjobtitel='intern' like 2;
