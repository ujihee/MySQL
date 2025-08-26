/*
	날짜 : 2025/08/12
    이름 : 우지희
    내용 : 데이터베이스 모델링3
*/
-- 사용자 추가
create user 'hospital'@'%' identified by '1234';
grant all privileges on university.* to 'hospital'@'%';
flush privileges;

insert into department values ('101','소아과','김유신','051-123-0101');
insert into department values ('102','내과','김춘추','051-123-0102');
insert into department values ('103','외과','장보고','051-123-0103');
insert into department values ('104','피부과','선덕여왕','051-123-0104');
insert into department values ('105','이비인후과','강감찬','051-123-0105');
insert into department values ('106','산부인과','심사임당','051-123-0106');
insert into department values ('107','흉부외과','류성룡','051-123-0107');
insert into department values ('108','정형외과','송상현','051-123-0108');
insert into department values ('109','신경외과','이순신','051-123-0109');
insert into department values ('110','비뇨기과','정약용','051-123-0110');
insert into department values ('111','안과','박지원','051-123-0111');
insert into department values ('112','치과','전봉준','051-123-0112');

INSERT INTO doctor (doc_id, doc_name, doc_birth, doc_gen, dep_no, doc_pos, doc_phone, doc_email) 
VALUES ('D101101','김유신','1976-01-21','M','101','과장','010-1101-1976','kimys@bw.com');
INSERT INTO doctor (doc_id, doc_name, doc_birth, doc_gen, dep_no, doc_pos, doc_phone, doc_email) VALUES
('D101102', '계백', '1975-06-11', 'M', '101', '전문의', '010-1102-1975', 'gaeback@bw.com'),
('D101103', '김관창', '1989-05-30', 'M', '101', '전문의', '010-1103-1989', 'kwanch@bw.com'),
('D102101', '김춘추', '1979-04-13', 'M', '102', '과장', '010-2101-1979', 'kimcc@bw.com'),
('D102104', '이사부', '1966-09-12', 'M', '102', '전문의', '010-2104-1966', 'leesabu@bw.com'),
('D103101', '장보고', '1979-07-28', 'M', '103', '과장', '010-3101-1979', 'jangbg@bw.com'),
('D104101', '선덕여왕', '1984-06-15', 'F', '104', '과장', '010-4101-1984', 'gueen@bw.com'),
('D105101', '강감찬', '1965-10-21', 'M', '105', '과장', '010-5101-1965', 'kang@bw.com'),
('D106101', '신사임당', '1972-11-28', 'F', '106', '과장', '010-6101-1972', 'sinsa@bw.com'),
('D107103', '이이', '1992-09-07', 'M', '107', '전문의', '010-7103-1992', 'leelee@bw.com'),
('D107104', '이황', '1989-12-09', 'M', '107', '전문의', '010-7104-1989', 'hwang@bw.com'),
('D108101', '송상현', '1977-03-14', 'M', '108', '과장', '010-8101-1977', 'ssh@bw.com');

insert into nurse values ('N101101','송승헌','1976-02-21','M','101','수간호사','010-1101-7602','ssh@bw.com');
insert into nurse values ('N102101','이영애','1975-07-11','F','102','수간호사','010-1102-7507','yung@bw.com');
insert into nurse values ('N102102','엄정화','1989-06-30','F','102','주임','010-1103-8906','um@bw.com');
insert into nurse values ('N102103','박명수','1979-05-13','M','102','주임','010-2101-7905','park@bw.com');
insert into nurse values ('N103101','정준하','1966-10-12','M','103','주임','010-2104-6610','jung@bw.com');
insert into nurse values ('N104101','김태희','1979-08-28','F','104','주임','010-3101-7908','taeh@bw.com');
insert into nurse values ('N105101','송혜교','1984-07-15','F','105','주임','010-4101-8407','song@bw.com');
insert into nurse values ('N106101','공유','1965-11-21','M','106','간호사','010-5101-6511','gong@bw.com');
insert into nurse values ('N107101','이병헌','1972-12-28','M','107','간호사','010-6101-7212','byung@bw.com');
insert into nurse values ('N108101','송중기','1992-10-07','M','108','간호사','010-7103-9210','jungi@bw.com');

insert into patient values ('P102101','D102101','N102101','정우성', '760121-1234567', 'M', '서울', '010-1101-7601', null, '배우');    
insert into patient values ('P103101','D103101','N103101','이정재','750611-1234567','M','서울','010-1102-7506',null,'배우');
insert into patient values ('P102102','D102104','N102103','전지현','890503-1234567','F','대전','010-1103-8905','jjh@naver.com','자영업');
insert into patient values ('P104101','D104101','N104101','이나영','790413-1234567','F','대전','010-2101-7904','lee@naver.com','회사원');
insert into patient values ('P105101','D105101','N105101','원빈','660912-1234567','M','대전','010-2104-6609','one@naver.com','배우');
insert into patient values ('P103102','D103101','N103101','장동건','790728-1234567','M','대구','010-3101-7907','jang@naver.com','배우');
insert into patient values ('P104102','D104101','N104101','고소영','840615-1234567','F','대구','010-4101-8406','goso@naver.com','회사원');
insert into patient values ('P108101','D108101','N108101','김연아','651021-1234567','F','대구','010-5101-6510','yuna@naver.com','운동선수');
insert into patient values ('P102103','D102104','N102102','유재석','721128-1234567','M','부산','010-6101-7211',null,'개그맨');
insert into patient values ('P107101','D107104','N107101','강호동','920907-1234567','M','부산','010-7103-9209',null,'개그맨');
insert into patient values ('P105102','D105101','N105101','조인성','891209-1234567','M','광주','010-7104-8912','join@naver.com','배우');
insert into patient values ('P104103','D104101','N104101','강동원','770314-1234567','M','광주','010-8101-7703','dong@naver.com','배우');

set sql_safe_updates = 0;
DELETE FROM treatment;

insert into treatment values (1021001,'D102101','P102101','감기,몸살','2022-01-10 10:50:12');
insert into treatment values (1031002,'D103101','P103101','교통사고 외상','2022-01-10 10:50:12');
insert into treatment values (1021003,'D102104','P102102','위염,장염','2022-01-10 10:50:12');
insert into treatment values (1041004,'D104101','P104101','피부 트러블','2022-01-10 10:50:12');
insert into treatment values (1051005,'D105101','P105101','코막힘 및 비염','2022-01-10 10:50:12');
insert into treatment values (1031006,'D103101','P103102','목 디스크','2022-01-10 10:50:12');
insert into treatment values (1041007,'D104101','P104102','여드름','2022-01-10 10:50:12');
insert into treatment values (1081008,'D108101','P108101','오른쪽 발목 뼈 골절','2022-01-10 10:50:12');
insert into treatment values (1021009,'D102104','P102103','소화불량','2022-01-10 10:50:12');
insert into treatment values (1071010,'D107104','P107101','가슴 통증','2022-01-10 10:50:12');
insert into treatment values (1051011,'D105101','P105102','귀 이명','2022-01-10 10:50:12');
insert into treatment values (1041012,'D104101','P104103','팔목 화상','2022-01-10 10:50:12');

insert into chart values ('C1021001',1021001,'D102101','P102101','감기 주사 및 약 처방');
insert into chart values ('C1031002',1031002,'D103101','P103101','입원 치료');
insert into chart values ('C1021003',1021003,'D102104','P102102','위내시경');
insert into chart values ('C1041004',1041004,'D104101','P104101','피부 감염 방지 주사');
insert into chart values ('C1051005',1051005,'D105101','P105101','비염 치료');
insert into chart values ('C1031006',1031006,'D103101','P103102','목 견인치료');
insert into chart values ('C1041007',1041007,'D104101','P104102','여드름 치료약 처방');
insert into chart values ('C1081008',1081008,'D108101','P108101','발목 깁스');
insert into chart values ('C1021009',1021009,'D102104','P102103','주사 처방');
insert into chart values ('C1071010',1071010,'D107104','P107101','MRI 검사');
insert into chart values ('C1051011',1051011,'D105101','P105102','귀 청소 및 약 처방');
insert into chart values ('C1041012',1041012,'D104101','P104103','화상 크림약 처방');

select doc_id, doc_name, doc_birth, d.dep_no, p.dep_name from doctor as d join 
department as p on d.dep_no = p.dep_no;

select nur_id, nur_name, nur_birth, p.dep_no, p.dep_name from nurse as n join
department as p on n.dep_no = p.dep_no;

select t.pat_id, t.pat_name, t.pat_jumin, t.pat_phone, d.doc_name, n.nur_name from patient as t join
doctor as d on t.doc_id = d.doc_id join
nurse as n on t.nur_id = n.nur_id;

select p.pat_name, d.doc_name, m.treat_desc, c.chart_desc, m.treat_datetime from treatment as m join 
doctor as d on m.doc_id = d.doc_id join
patient as p on m.pat_id = p.pat_id join
chart as c on m.treat_no = c.treat_no;

select m.treat_no, p.pat_name, d.doc_name, treat_desc, chart_desc, treat_datetime from treatment as m join
patient as p on m.pat_id = p.pat_id join
doctor as d on m.doc_id = d.doc_id join
chart as c on m.treat_no = c.treat_no
where dep_no = 103;

select m.treat_no, p.pat_name, d.doc_name, treat_desc, chart_desc, treat_datetime from treatment as m join
patient as p on m.pat_id = p.pat_id join
doctor as d on m.doc_id = d.doc_id join
chart as c on m.treat_no = c.treat_no
where treat_desc like '%화상%';

SELECT * from
	(SELECT *, YEAR(NOW()) - year AS age
	 from (SELECT *, CONCAT('19', SUBSTRING(pat_jumin, 1, 2)) AS year FROM Patient) AS a) AS b
WHERE age >= 30 AND age < 40;
/*
1) 가장 안쪽 서브쿼리
SELECT *, CONCAT('19', SUBSTRING(pat_jumin, 1, 2)) AS year FROM Patient
pat_jumin 주민번호에서 SUBSTRING(pat_jumin, 1, 2) : 앞에서 2자리 (출생년도 뒷자리, 예: "90") 추출
CONCAT('19', ...) : 앞에 '19' 붙여서 "1990" 같은 4자리 연도로 만듦
여기서 year 컬럼이 새로 생성됨
결과는 Patient 테이블 컬럼에 year 컬럼이 추가된 형태

2) 중간 서브쿼리
SELECT *, YEAR(NOW()) - year AS age FROM ( ... ) AS a
서브쿼리 a 결과에 YEAR(NOW()) : 올해 연도 (예: 2025)
year 컬럼 (예: "1990")를 숫자로 빼서 나이 계산
age라는 새 컬럼 생성
결과는 Patient 모든 컬럼 + year + age

3) 바깥 쿼리
SELECT * FROM ( ... ) AS b WHERE age >= 30 AND age < 40;
나이가 30 이상 40 미만인 행만 필터링해서 가져옴
*/

select dep_manager, dep_name from department as m left join doctor as d
on m.dep_no = d.dep_no where doc_id is null;

select group_concat(pat_name separator '^') as 환자들 from patient where nur_id = 'N104101';

select n.nur_id, nur_name, count(*) from patient as p join
nurse as n on p.nur_id = n.nur_id
group by nur_id
order by count(*) desc
limit 1;