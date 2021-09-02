-- 모든 도서의 이름과 가격을 검색하시오.
select * from Book;
select bookname, price from Book;
select price,bookname from Book;

-- 모든 도서의 도서번호, 도서이름, 출판사, 가격을 검색하시오.
select bookid,bookname,publisher,price from book;
select * from book;

-- 도서 테이블에 있는 모든 출판사를 검색하시오.
select publisher from book;
select distinct publisher from book;

-- where 조건
-- 가격이 20,000원 미만인 도서를 검색하시오.
select * from book where price < 20000; -- 대소문자 구분x

-- 가격이 1만원 이상, 2만원 이하인 도서를 검색하시오.
select * from book where price between 10000 and 20000;
select * from book where price >= 10000 and price <= 20000; -- 정수에는 ,입력 x

-- 출판사가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색하시오.
select * from book where publisher in ('굿스포츠','대한미디어');
-- 상기 2개 출판사가 아닌 도서 검색
select * from book where publisher not in ('굿스포츠','대한미디어');

-- '축구의 역사'를 출간한 출판사 검색
select bookname,publisher from book where bookname = '축구의 역사'; -- 하나만 검색
select bookname,publisher from book where bookname like '축구의 역사'; -- 해당 단어를 포함한 책제목 검색

-- 도서이름 중 축구가 포함된 출판사 검색
select bookname, publisher from book where bookname like '%축구%';

-- 왼쪽 두번째 위치에 '구'라는 글자를 포함한 도서 검색
select * from book where bookname like '_구%';
select * from book where publisher like '__미디어';
