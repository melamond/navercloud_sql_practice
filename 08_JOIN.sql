CREATE TABLE staff(
	staff_num INT AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(20),
    staff_job VARCHAR(20),
    staff_salary INT,
    staff_supervisor INT
);

INSERT INTO staff VALUES
	(NULL, '설민경', '개발', 30000, NULL),
    (NULL, '윤동석', '총무', 25000, NULL),
    (NULL, '하영선', '인사', 18000, NULL),
    (NULL, '오진호', '개발', 5000, 1),
    (NULL, '류민지', '개발', 4500, 4),
    (NULL, '권기남', '총무', 4000, 2),
    (NULL, '조예지', '인사', 3200, 3),
    (NULL, '배성은', '개발', 3500, 5);
    
SELECT l.staff_name as 하급자이름, r.staff_name as 상급자이름
from staff as l inner join staff as r
on l.staff_num = r.staff_supervisor;

select  * from staff;

-- UNION 은 SELECT 문 두개를 위아래로 배치해서 양쪽 결과를 붙여줌
-- 수직적 확장을 고려할때 사용
-- 고양이 테이블 생성
CREATE TABLE cat (
	animal_name varchar(20),
    animal_age int,
    animal_owner varchar(20),
    animal_type varchar(20)
);

CREATE TABLE dog (
	animal_name varchar(20),
    animal_age int,
    animal_owner varchar(20),
    animal_type varchar(20)
);

insert into cat values
	('룰루', 4, '룰맘', '고양이'),
    ('이완자', 5, '양정', '고양이');
insert into dog values
	('턱순이', 7, '이영수', '강아지'),
    ('구슬이', 8, '이영수', '강아지');
    
select * from cat
union
select * from dog;