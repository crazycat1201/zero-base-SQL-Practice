����5��)  customers ���̺��� �̿��Ͽ�,
���� id ����,
custstate ���� �� WA ������ ��� �����  WA �� �ƴ� ������ ��� ����� �����ؼ� �����ּ���.
 - customerid ��,  newstate_flag �÷����� �������ּ��� .
 - newstate_flag �÷��� WA �� OTHERS ��  �������ֽø� �˴ϴ�.

select *
from customers as c
 
     �� SQL �� ���� 

select customerid,
	case
		when custstate = 'WA' then custstate
		else 'OTHERS'
	end as newstate_flag
from customers as c