select * from bob;
grant ALL privileges ON skila.test to bob;
show grants for bob;

create database skila;
use skila;
create table test (id int , n_ame varchar(250));
insert into test(id , n_ame) value (1 , "ram");
grant all privileges on skila.test to bob;
show grants for 'bob';
flush privileges;
REMOVE all privileges from skila.test from bob;
alter user 'bob' identified by 'sk12345';
alter user 'bob' account lock;

alter user 'bob' account unlock;

create role sales1;
grant select on skila.* to sales1;
create user "aadi" identified by "aadi";
show grants for "aadi";

-- grant role to user 

grant sales1 to aadi;
show grants for "aadi";
set default role all to aadi;

-- to check the role 
-- select current_rol()

-- assigining role to user 

set default role all to aadi;

create user bob1 identified by "bob1";
select current_user();

-- this is work abhinav

create database gran_ts;
use gran_ts;
create table abhi(id int , first_name varchar(250) , email varchar (50));

create user abhinav identified by "abhinav";

select current_user();

-- give the pernisitions 

grant select (id , first_name , email ) on gran_ts.abhi to abhinav;
grant insert (first_name) on gran_ts.abhi to abhinav;
grant update (email) on gran_ts.abhi to abhinav;
grant update (id) on gran_ts.abhi to abhinav;


-- insert the value and update 

-- and this is a new connaction abhinav 

select * from gran_ts.abhi;
insert into gran_ts.abhi(first_name ) value ("abhinav") , ("three") , ("for");
update gran_ts.abhi set email="tushar@12345";
update gran_ts.abhi set id=1;