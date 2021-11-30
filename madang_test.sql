use madang;
drop table if exists members ;
drop table if exists members_board;

create table members (
id		  varchar(8) primary key,
name	  varchar(15) not null,
password  varchar(15) not null,
email	  varchar(20),
mobile	  varchar(15),
createdAt datetime default current_timestamp
);

-- 문제 6 : 테이블 정보를 출력하는 SQL문 --
select * from members;
desc members;

-- 문제 7 : 가입자 추가하는 SQL문 --
insert into members(id,name,password,email,mobile)
values('200106','정준하','200106','joonha@naver.com','010-2345-1234'),
('200108','황광희','200108','gwanghee@naver.com','010-7543-2342'),
('200107','유재석','200107','jaesuk@naver.com','010-1234-5678'),
('200109','박명수','200109','myoungsoo@naver.com','010-7543-7894'),
('200110','조세호','200110','seho@naver.com','010-7543-4586');

-- 문제 8 : 회원 중 한 명의 전화번호를 변경하는 SQL문 --
update members set mobile = '010-9876-5432' where id='200110';

-- 문제 9 : 회원 중 한 명을 삭제하는 SQL문 --
delete from members where id='200110';

-- 문제 10 : 게시글 테이블 생성 --
create table members_board (
board_no integer primary key,
board_title varchar(20),
board_contents varchar(2000),
board_writer varchar(5),
board_views integer default 0,
board_date datetime default current_timestamp,
board_editdate datetime default current_timestamp on update current_timestamp 
);

select * from members_board;
desc members_board;

-- 문제 11 --
insert into members_board(board_no,board_title,board_contents,board_writer,board_views,board_date,board_editdate)
values ('1','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('2','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('3','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('4','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('5','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('6','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('7','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('8','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('9','제목','내용','아무개','0','2021-10-13','2021-10-13'),
('10','제목','내용','아무개','0','2021-10-13','2021-10-13')
;
delete from members_board;

-- 문제 12 --
