use madang;
DROP TABLE IF EXISTS table_kor ;
DROP TABLE IF EXISTS students_info ;
DROP TABLE IF EXISTS table_eng ;
DROP TABLE IF EXISTS students ;

CREATE TABLE table_kor (
std_num   INTEGER PRIMARY KEY,
name    VARCHAR(40),
birth   VARCHAR(40),
tel     INTEGER,
address VARCHAR(40),
note    VARCHAR(40)
);

INSERT INTO table_kor VALUES('학번', '이름', '생년월일', '전화번호', '주소', '비고');
INSERT INTO table_kor VALUES('std_num', 'name', 'birth', 'tel', 'address', 'note');


CREATE TABLE students_info (



);

CREATE TABLE table_eng (



);

CREATE TABLE students (



);

-- 문항5~12
use madang;
DROP TABLE IF EXISTS students ;
DROP TABLE IF EXISTS scores ;


CREATE TABLE students (
  std_num   INTEGER PRIMARY KEY,
  name    VARCHAR(40),
  birth    VARCHAR(40),
  tel    VARCHAR(40),
  address    VARCHAR(40),
  email VARCHAR(40)
);

INSERT INTO students VALUES('200101', '유재석', '2001-02-15', '010-1234-9876', '경기도 성남시 분당구 구미동', 'jaesuck@naver.com'); 
INSERT INTO students VALUES('200102', '박명수', '2001-05-05', '010-5678-5432', '경기도 성남시 분당구 금곡동', 'myungsu@naver.com'); 
INSERT INTO students VALUES('200103', '정형돈', '2001-12-25', '010-9012-1098', '경기도 성남시 분당구 수내동', 'hyungdon@hanmail.com'); 
INSERT INTO students VALUES('200104', '하동훈', '2001-08-15', '010-3456-7654', '경기도 성남시 분당구 백현동', 'donghun@hanmail.com'); 
INSERT INTO students VALUES('200105', '노홍철', '2001-10-01', '010-7890-3210', '경기도 성남시 분당구 판교동', 'hongchul@korea.com');

CREATE TABLE scores (
  std_num   INTEGER PRIMARY KEY,
  kor    INTEGER,
  eng    INTEGER,
  mat    INTEGER
);

INSERT INTO scores VALUES('200101', 90, 88, 95); 
INSERT INTO scores VALUES('200102', 88, 87, 78); 
INSERT INTO scores VALUES('200103', 78, 88, 98);
INSERT INTO scores VALUES('200104', 65, 58, 75);
INSERT INTO scores VALUES('200105', 85, 74, 65);

create index idx_name on students(name);
create index idx_std_num on scores(std_num);



commit;