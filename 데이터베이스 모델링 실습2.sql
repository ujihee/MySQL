/*
	날짜 : 2025/08/12
    이름 : 우지희
    내용 : 데이터베이스 모델링
*/
-- 사용자 추가
create user 'university'@'%' identified by '1234';
grant all privileges on university.* to 'university'@'%';
flush privileges;

-- 데이터 입력

-- Department 테이블 데이터 입력
INSERT INTO Department (depNo, depName, depTel) VALUES 
(10, '국어국문학과', '051-510-1010'),
(11, '영어영문학과', '051-510-1011'),
(20, '경영학과', '051-510-1020'),
(21, '경제학과', '051-510-1021'),
(22, '정치외교학과', '051-510-1022'),
(23, '사회복지학과', '051-510-1023'),
(30, '수학과', '051-510-1030'),
(31, '통계학과', '051-510-1031'),
(32, '생명과학과', '051-510-1032'),
(40, '기계공학과', '051-510-1040'),
(41, '전자공학과', '051-510-1041'),
(42, '컴퓨터공학과', '051-510-1042');

-- Professor 테이블 데이터 입력
INSERT INTO Professor (proNo, proName, proJumin, proHp, proEmail, proAddr, depNo) VALUES 
('P10101', '김유신', '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr', '서울', 10),
('P10102', '계백', '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울', 10),
('P11101', '김관창', '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr', '대전', 11),
('P11103', '김춘추', '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr', '-', 11),
('P11104', '이사부', '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전', 11),
('P22110', '장보고', '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr', '대구', 22),
('P23102', '선덕여왕', '830614-1234567', '010-4101-1984', 'gueen@hg.ac.kr', '-', 23),
('P31101', '강감찬', '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr', '대구', 31),
('P31104', '신사임당', '711127-2234567', '010-6101-1972', 'sinsa@hg.ac.kr', '부산', 31),
('P40101', '이이', '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr', '부산', 40),
('P40102', '이황', '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr', '-', 40),
('P42103', '송상현', '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr', '광주', 42);

-- Student 테이블 데이터 입력
INSERT INTO Student (stdNo, stdName, stdJumin, stdHp, stdEmail, stdAddr, proNo, depNo) VALUES 
('20101001', '정우성', '760121-1234567', '010-1101-7601', NULL, '서울', 'P10101', 10),
('20101002', '이정재', '750611-1234567', '010-1102-7506', NULL, '서울', 'P10101', 10),
('20111011', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', NULL, 'P11103', 11),
('20111013', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전', 'P11103', 11),
('20111014', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.net', '대전', 'P11104', 11),
('21221010', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구', 'P22110', 22),
('21231002', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', NULL, 'P23102', 23),
('22311011', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구', 'P31104', 31),
('22311014', '유재석', '721128-1234567', '010-6101-7211', NULL, '부산', 'P31104', 31),
('22401001', '강호동', '920907-1234567', '010-7103-9209', NULL, '부산', 'P40101', 40),
('22401002', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com', '광주', 'P40101', 40),
('22421003', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주', 'P42103', 42);

-- Course 테이블 데이터 입력
INSERT INTO Course (csNo, proNo, csName, csCredit, csTime, csClass) VALUES 
('101001', 'P10101', '대학 글쓰기', 2, 100, '본102'),
('101002', 'P10102', '한국어음운론', 3, 300, '본102'),
('101003', 'P10102', '한국현대문학사', 3, 300, '본103'),
('111011', 'P11103', '중세영문학', 3, 200, '본201'),
('111012', 'P11104', '영미시', 3, 200, '본201'),
('231110', 'P23102', '사회복지개론', 2, 180, '별관103'),
('311002', 'P31101', '통계의 이해', 2, 160, '별관303'),
('311003', 'P31104', '기초 통계학', 3, 600, '별관303'),
('401019', 'P40101', '기계역학', 3, 600, '공학관 102'),
('421012', 'P42103', '데이터베이스', 3, 800, '공학관 103');

-- Enrollment 테이블 데이터 입력
INSERT INTO Enrollment (stdNo, proNo, csNo, scoreAttd, scoreMid, scoreFinal, scoreTotal, scoreGrade) VALUES 
('20101001', 'P10101', '101001', NULL, NULL, NULL, NULL, NULL),
('20101001', 'P10102', '101002', NULL, NULL, NULL, NULL, NULL),
('20111013', 'P11103', '111011', NULL, NULL, NULL, NULL, NULL),
('21231002', 'P23102', '231110', NULL, NULL, NULL, NULL, NULL),
('22401001', 'P40101', '401019', NULL, NULL, NULL, NULL, NULL),
('22401001', 'P42103', '421012', NULL, NULL, NULL, NULL, NULL),
('20101001', 'P10102', '101003', NULL, NULL, NULL, NULL, NULL),
('22421003', 'P31104', '311003', NULL, NULL, NULL, NULL, NULL),
('22421003', 'P42103', '421012', NULL, NULL, NULL, NULL, NULL),
('20111013', 'P11104', '111012', NULL, NULL, NULL, NULL, NULL);

-- 문제1
select s.stdNo, s.stdName, s.stdHp, d.depNo, d.depName from student as s join
department as d on s.depNo = d.depNo;

-- 문제2
select p.proNo, p.proName, p.proHp, d.depNo, d.depName from professor as p join
department as d on p.depNo = d.depNo;

-- 문제3
select c.csNo, c.csName, p.proName, p.proHp  from course as c join
professor as p on c.proNo = p.proNo;

-- 문제4
select c.csNo, c.csName, p.proNo, p.proName, p.proHp, d.depNo, d.depName from course as c join
professor as p on c.proNo = p.proNo join
department as d on p.depNo = d.depNo;

-- 문제5
select s.stdNo, s.stdName, c.csNo, c.csName, p.proNo, p.proName from enrollment as e join
student as s on e.stdNo = s.stdNO join
professor as p on e.proNo = p.proNo join
course as c on p.proNo = c.proNo;

-- 문제6
set sql_safe_updates = 0; -- where절 없는 update를 실행하기 위해 safe mode 해제UPDATE Enrollment 
UPDATE Enrollment SET
	scoreAttd = CEIL(RAND() * 100),
	scoreMid   = CEIL(RAND() * 100),
	scoreFinal = CEIL(RAND() * 100);

-- 문제7
UPDATE Enrollment SET scoreTotal = (scoreAttd + scoreMid + scoreFinal) / 3;

-- 문제8
update enrollment set scoreGrade =  if(scoreTotal >= 90, 'A',
									if(scoreTotal >= 80, 'B',
									if(scoreTotal >= 70, 'C',
                                    if(scoreTotal >= 60, 'D','F'))));
                                    
-- 문제9
select scoreTotal from enrollment order by scoreTotal desc limit 1;

-- 문제10
select avg(scoreTotal) from enrollment as e join
student as s on e.stdNo = s.stdNo
where stdName = '정우성';