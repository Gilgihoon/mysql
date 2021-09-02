use mysql; -- mysql 데이터베이스로 이동
select	* from user; -- 사용자 검색 SQL 명령어
create user 'madang'@'localhost' identified with mysql_native_password by 'madang'; -- 본인pc만 접속가능
create user 'madang'@'%' identified with mysql_native_password by 'madang'; -- 외부pc 접속시 %부분을 ip주소로 입력
create database madang;
grant all privileges on madang.*to 'madang'@'localhost'; -- grant all privileges = 모든 권한 부여
grant all privileges on madang.*to 'madang'@'%';
commit; -- hdd에 실행한 sql 결과값 저장 