CREATE DATABASE joins;
USE joins;
CREATE TABLE job(product_name varchar(290) , Supplier_id int );
insert into job(product_name , Supplier_id) value ('Plant Oat ', 1) , ('Honey Nut' , 2)
, ('Magnum Double' , 3) , ('Sour Patch' , 4) , ('Ferrero Egg' , 5);
select * from job1;
CREATE TABLE job1(product_name varchar(290) , Supplier_id int );
insert into job1(product_name , Supplier_id) value  ('johan ', 1) , ('anne' , 2)
, ('robert' , 3) , ('jerry' , 4) , ('trim' , 5);

update job1 set Supplier_id=7 where Supplier_id=3;
update job1 set Supplier_id=6 where Supplier_id=4;

select job.product_name , job1.product_name
 from job inner join job1 
 on job.Supplier_id=job1.Supplier_id;
 
 SELECT job.product_name , job1.product_name 
 from job left join job1 
 on job.Supplier_id=job1.Supplier_id;
 
 SELECT job.product_name , job1.product_name
 from job right join job1
 on job.Supplier_id=job1.Supplier_id
 
 union SELECT job.product_name , job1.product_name from job left join job1 
 on job.Supplier_id=job1.Supplier_id;
 
 
 select job.product_name , job1.product_name from job cross join job1;
select job.* , job1.* from job join job1;

select job.product_name ,  job1.product_name from job natural join job1;

select a.product_name , b.Supplier_id 
from job a, job  b where a.Supplier_id=b.Supplier_id;