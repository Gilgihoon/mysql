use madang;
set sql_safe_updates=0;
delete from orders;
select * from orders;
set global log_bin_trust_function_creators = on;

use mysql; 
create database jspdb;
select * from user;
create user 'study'@'%' identified by 'study';
grant all privileges on jspdb.* to 'study'@'localhost';
grant all privileges on jspdb.* to 'study'@'%';
flush privileges;
commit;

create database lala;
grant all privileges on lala.* to 'study'@'localhost';
grant all privileges on lala.* to 'study'@'%';
flush privileges;
commit;