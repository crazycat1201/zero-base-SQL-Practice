����1��)  �ֹ����� 2017-09-02 �Ͽ� �ش� �ϴ� �ֹ��ǿ� ���ؼ�,
� ����, ��� ��ǰ�� ���ؼ� �󸶸� �����Ͽ�  ��ǰ�� �����ߴ��� Ȯ�����ּ���.

     �� SQL �� ���� 

select o.customerid, od.productnumber,
	(od.quotedprice*od.quantityordered) as payments
from order_details as od
	join orders as o on od.ordernumber = o.ordernumber
where o.orderdate = '2017-09-02'
order by o.customerid, od.productnumber, payments desc