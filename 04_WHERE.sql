-- user_tbl

select * from user_tbl;

-- 수도권에 사는 사람을 쿼리문 하나로 조회

SELECT * FROM user_tbl where user_address = '서울' or user_address = '경기';

-- in : 다음에 오는 리스트 목록에 포함된 요소만 출력
select * from user_tbl where user_address in ('서울', '경기');

-- 구매내역 있는 유저만 출력
select user_num from buy_tbl;
-- 서브쿼리활용
select * from user_tbl where user_num in (select user_num from buy_tbl);

-- like 구문 : 패턴 일치 여부 통해 조회
-- %는 와일드 카드 문자로 어떤 문자가 몇글자가 오던 상관X
-- _ 는 _하나당 1글자
select * from user_tbl where user_name like '%희';

-- "--남도" 사는 사람만 조회
select * from user_tbl where user_address like '_남';

-- 이름이 자바인 사람만
select * from user_tbl where user_name like '_자바';
select * from user_tbl where user_name like '%자바';

-- 키가 165~175

select * from user_tbl where user_height between 165 and 175;
select * from user_tbl where user_height >= 165 and user_height <= 175;

-- null을 가지는 데이터 생성
insert into user_tbl values
(null, '박진영', 1990, '제주', null, '2020-10-01'),
(null, '김혜경', 1992, '강원', null, '2020-10-02'),
(null, '신지수', 1993, '서울', null, '2020-10-05');

select * from user_tbl;

-- null 만 얻어내기는 IS NULL
select * from user_tbl where user_height = NULL; -- 결과 안나옴
select * from user_tbl where user_height IS NULL;