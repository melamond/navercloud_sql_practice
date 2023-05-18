-- order by 는 select 문 질의 결과 정렬시 사용
-- order by 다음에는 어떤 컬럼 기준으로 어떤 방식 정렬할지 적어줘야 함alter
-- 다음은 user_tbl에 대해 키순으로 내림차순 정렬한 예시

select * from user_tbl order by user_height desc;

-- user_tbl에 대해 키순 오름차순 키가 동률이면 체중순으로 내림차순

select * from user_tbl
	order by user_height asc, user_weight desc;
    
-- 가나다라 순으로 정보 정렬하되 un 이라는 별칭 활용
select user_num, user_name as un, user_birth_year, user_address 
	from user_tbl order by un desc;
    
-- 컬럼번호 (왼쪽부터 1) 이용해서 정렬 가능
select user_num, user_name as un, user_birth_year, user_address 
	from user_tbl order by 3 desc; -- 생년월일 정렬
    
-- 지역별 키 평균을 내림 차순 정렬
select user_address, AVG(user_height) from user_tbl 
	group by user_address order by 2 desc;
    
-- 경기 지역 사람들만 체중을 내림 차순으로, 나머지는 정렬 없이 출력
select user_name, user_birth_year, user_address, user_height, user_weight from user_tbl 
	order by 
		case user_address
			when '경기' then user_weight
            else null
		end desc;

-- 생년도 1992 인 사람은 키 기준 오름차순, 1998 인 사람은 이름 기준 오름차순, 나머지는 정렬 없이 출력
select * from user_tbl 
	order by
		case user_birth_year
			when 1992 then user_height
            when 1998 then user_name
		else null
		end asc;