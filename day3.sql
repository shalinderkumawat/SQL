-- create DATABASE A;
-- USE A;
-- CREATE TABLE regex(regex_id int , regex_name varchar(20), java varchar(90));
-- select * from regex; 
-- insert into regex(regex_id , regex_name , java) value(1,'ram','core'), (2,'shyam','java core');
-- select * from regex;
-- UPDATE TABLENAME set NEWCONDITION WHERE CONDITION
UPDATE regex set regex_id=59 where regex_name='ram';
select * from regex;

-- Alter -- table tablename add column course varchar(90)

ALTER TABLE regex ADD COLUMN new_column varchar(2);
select * from regex;

ALTER TABLE regex modify COLUMN new_column int;
ALTER TABLE regex rename column new_column to new_column123;
select * from regex;
-- this is delete 	query 
alter table regex drop column new_column123;


