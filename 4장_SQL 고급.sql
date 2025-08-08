/*
	날짜 : 2025/08/08
    이름 : 우지희
    내용 : 4장 SQL고급 실습
*/

create table member (
 uid	varchar(10) primary key,
 name	varchar(10) not null,
 hp		varchar(13) not null,
 pos	varchar(10) default '사원',
 dep	int default null,
 rdate datetime not null
);
drop table member;

create table department(
 depno	int primary key,
 name	varchar(10) not null,
 tel	varchar(12) not null
);

create table sales(
	seq	int auto_increment primary key,
    uid	varchar(10) not null,
    year	year not null,
    month 	int not null,
    sale	int default null
);
drop table sale;

insert into member values ('a101', '박혁거세', '101-1234-1001', '부장', 101, '2020-11-19 11:39:48');
insert into member values ('a102', '김유신', '101-1234-1002', '차장', 101, '2020-11-19 11:39:48');
insert into member values ('a103', '김춘추', '101-1234-1003', '사원', 101, '2020-11-19 11:39:48');
insert into member values ('a104', '장보고', '101-1234-1004', '대리', 102, '2020-11-19 11:39:48');
insert into member values ('a105', '강감찬', '101-1234-1005', '과장', 102, '2020-11-19 11:39:48');
insert into member values ('a106', '이성계', '101-1234-1006', '차장', 103, '2020-11-19 11:39:48');
insert into member values ('a107', '정철', '101-1234-1007', '차장', 103, '2020-11-19 11:39:48');
insert into member values ('a108', '이순신', '101-1234-1008', '부장', 104, '2020-11-19 11:39:48');
insert into member values ('a109', '허균', '101-1234-1009', '부장', 104, '2020-11-19 11:39:48');
insert into member values ('a110', '정약용', '101-1234-1010', '사원', 105, '2020-11-19 11:39:48');
insert into member values ('a111', '박지원', '101-1234-1011', '사원', 105, '2020-11-19 11:39:48');

insert into department values (101, '영업1부', '051-512-1001');
insert into department values (102, '영업2부', '051-512-1002');
insert into department values (103, '영업3부', '051-512-1003');
insert into department values (104, '영업4부', '051-512-1004');
insert into department values (105, '영업5부', '051-512-1005');
insert into department values (106, '영업지원부', '051-512-1006');
insert into department values (107, '인사부', '051-512-1007');

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2018, 1,  98100);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2018, 1, 136000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2018, 1,  80100);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2018, 1,  78000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2018, 1,  93000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2018, 2,  23500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2018, 2, 126000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2018, 2,  18500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2018, 2,  19000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2018, 2,  53000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2019, 1,  24000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2019, 1, 109000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2019, 1, 101000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2019, 1,  53500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a107', 2019, 1,  24000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2019, 2, 160000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2019, 2, 101000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2019, 2,  43000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2019, 2,  24000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2019, 2, 109000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2020, 1, 201000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2020, 1,  63000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2020, 1,  74000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2020, 1, 122000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a107', 2020, 1, 111000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2020, 2, 120000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2020, 2,  93000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2020, 2,  84000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2020, 2, 180000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a108', 2020, 2,  76000);

-- 4-3
select * from member where name='김유신';
select * from member where pos='차장' and dep=101;
select * from member where pos='차장' or dep=101;
select * from member where name != '김춘추';
select * from member where pos='사원' or pos='대리';
select * from member where pos in ('사원', '대리');
select * from member where dep in (101, 102, 103);
select * from member where name like '%신';
select * from member where name like '김%';
select * from member where name like '김__';
select * from member where name like '_성_';
select * from member where name like '정_';
select * from sales where sale > 50000;
select * from sales where sale >= 50000 and sale < 100000 and month=1;
select * from sales where sale between 50000 and 100000;
select * from sales where sale not between 50000 and 100000;
select * from sales where year in (2020);
select * from sales where month in (1, 2);

-- 4-4
select * from sales order by sale;
select * from sales order by sale asc;
select * from sales order by sale desc;
select * from member order by name;
select * from member order by name desc;
select * from member order by rdate asc;
select * from sales where sale > 50000 order by year, month, sale desc;

-- 4-5
select * from sales limit 3;
select * from sales limit 0, 3;
select * from sales limit 1, 2;
select * from sales limit 5, 3;
select * from sales order by sale desc limit 3, 5;
select * from sales where sale > 50000 order by sale desc limit 3;
select * from sales where sale > 50000 order by year desc, month, sale desc limit 5;

-- 4-6
select sum(sale) as 합계 from sales;
select avg(sale) as 평균 from sales;
select max(sale) as 최대값 from sales;
select min(sale) as 최소값 from sales;
select ceiling(1.2); -- 올림
select ceiling(1.8);
select floor(1.2); -- 버림
select floor(1.8);
select round(1.2); -- 반올림
select round(1.8);
select rand(); -- 0과 1 사이의 난수(랜덤 숫자)를 생성하는 함수를 호출하는 쿼리
select ceiling(rand() * 10);
select count(sale) as 갯수 from sales;
select count(*) as 갯수 from sales;

select left('HelloWorld', 5); -- LEFT(string, number) 함수는 문자열 string의 왼쪽부터 지정한 number 만큼의 문자들을 잘라서 반환합니다.
select right('HelloWorld', 5);
select substring('HelloWorld', 6, 5);
select concat('Hello', 'World'); -- CONCAT(string1, string2, ...) 함수는 여러 개의 문자열을 순서대로 붙여서 하나의 문자열로 만듭니다.
select concat(uid, name, hp) from member where uid='a108';

select curdate(); -- 현재 날짜만 YYYY-MM-DD 형식으로 반환합니다.
select curtime(); -- 현재 시간만 HH:MM:SS 형식으로 반환합니다.
select now(); -- 현재 날짜와 시간을 함께 YYYY-MM-DD HH:MM:SS 형식으로 반환합니다.
insert into member values ('a112', '유관순', '010-1234-1012', '대리', 107, now());

-- 4-7
select sum(sale) from sales where month=1;

-- 4-8
select sum(sale) from sales where sale > 50000 and year=2019 and month=2;
select avg(sale) from sales where sale > 50000 and year=2019 and month=2;

-- 4-9
select max(sale) from sales where year=2020;
select min(sale) from sales where year=2020;

-- 4-10
select uid from sales group by uid; -- group by 컬럼은 select 절에 조회되어야 함
select year from sales group by year;
select uid, year from sales group by uid, year;
select uid, count(*) as 건수 from sales group by uid;
select uid, sum(sale) as 합계 from sales group by uid;
select uid, avg(sale) as 평균 from sales group by uid;

select uid, year, sum(sale) as 합계 from sales group by uid, year;
select uid, year, sum(sale) as 합계 from sales group by uid, year order by year asc, 합계 desc;
select uid, year, sum(sale) as 합계 from sales where sale >= 50000 group by uid, year order by 합계 desc;

-- 4-11
select uid, sum(sale) as 합계 from sales group by uid having 합계 >= 200000;
select uid, year, sum(sale) as 합계 from sales where sale >= 100000 group by uid, year having 합계 >= 200000 order by 합계 desc;

-- 4-12
create table sales2 like sales;
insert into sales2 select * from sales;

set sql_safe_updates=0; -- where 절이 없는 update를 수행하기 위해서는 안전한 쿼리 실행 모드를 0으로 설정
update sales2 set year = year + 3;

select * from sales union select * from sales2; -- UNION은 두 개 이상의 SELECT 결과를 합쳐서 하나의 결과 집합으로 만듭니다. 중복된 행은 자동으로 제거됩니다.
select * from sales where sale >= 100000 union select * from sales2 where sale >= 100000;

select uid, year, sum(sale) as 합계 from sales group by uid, year
union
select uid, year, sum(sale) as 합계 from sales2 group by uid, year order by year asc, 합계 desc;

/* 1. UNION (유니언)
목적: 여러 테이블에서 나온 결과를 아래로 쌓아서 합침 (세로 결합)

결과: 두 개 이상의 SELECT 결과를 하나의 결과 집합으로 합침

중복: 기본적으로 중복된 행은 제거됨

조건: SELECT 문들의 컬럼 개수와 순서가 같아야 함

	컬럼 타입도 호환 가능해야 함
*/
-- 4-13
select * from sales inner join member on sales.uid = member.uid; -- sales 테이블의 행 중에서 member 테이블에 같은 uid가 존재하는 행만 결과에 포함됩니다.
select * from member inner join department on member.dep = department.depno;

select * from sales as a join member as b on a.uid = b.uid;
select * from member as a join department as b on a.dep = b.depno;

select * from sales as a, member as b where a.uid = b.uid;
select * from member as a, department as b where a.dep = b.depno;

select a.seq, a.uid, sale, name, pos from sales as a join member as b on a.uid = b.uid;

select a.seq, a.uid, sale, name, pos from sales as a join member as b using (uid);

select a.seq, a.uid, sale, name, pos from sales as a join member as b on a.uid = b.uid where sale >= 100000;

select a.uid, a.year, sum(sale) as 합계 from sales as a 
join member as b on a.uid = b.uid 
group by a.uid, a.year having 합계 >= 100000
order by a.year asc, 합계 desc; --
select * from sales as a join member as b on a.uid = b.uid 
join department as c on b.dep = c. depno;

select a. seq, b.uid, a.sale, b.name, b.pos, c.name from sales as a join member as b on a.uid=b.uid
join department as c on b.dep=c.depno;

select a.seq, a.uid, a.sale, b.name, b.pos, c.name from sales as a
join member as b on a.uid = b.uid
join department as c on b.dep = c.depno
where sale > 100000
order by sale desc;

-- 4-14
select * from sales as a left join member as b on a.uid = b.uid;
select * from sales as a right join member as b on a.uid = b.uid;
select a.seq, a.uid, sale, name, pos from sales as a left join member as b using(uid);

select a.seq, a.uid, sale, name, pos from sales as a right join member as b using(uid);

-- 4-15
select a.uid, a.name, pos, b.name from member as a left join department as b on a.dep = b.depno;

-- 4-16
select sum(sale) from sales as a join member as b on a.uid = b.uid where year=2019 and name='김유신';

-- 4-17
select b.name, c.name, pos, sum(sale) from sales as a join
member as b on a.uid = b.uid join
department as c on b.dep = c.depno 
where year=2019 
group by b.name, c.name, pos
having sum(sale) >= 50000
order by sum(sale) desc;

