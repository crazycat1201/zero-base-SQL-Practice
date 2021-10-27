문제5번)  customers 테이블을 이용하여,
고객의 id 별로,
custstate 지역 중 WA 지역에 사는 사람과  WA 가 아닌 지역에 사는 사람을 구분해서 보여주세요.
 - customerid 와,  newstate_flag 컬럼으로 구성해주세요 .
 - newstate_flag 컬럼은 WA 와 OTHERS 로  노출해주시면 됩니다.

select *
from customers as c
 
     답 SQL 은 여기 

select customerid,
	case
		when custstate = 'WA' then custstate
		else 'OTHERS'
	end as newstate_flag
from customers as c