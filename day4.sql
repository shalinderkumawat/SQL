-- drop database a;
-- drop database students;


create database a;
use a ;
create table regex(regex1 int ,  regex2 varchar(90) ,regex3 varchar(90));
select * from regex;
insert into regex(regex1 , regex2 , regex3) value(1,'a','b') , (2,'a','b') , (3,'a','b');
ALTER TABLE regex ADD COLUMN new_column int;

delete from regex where regex1=1;
 
