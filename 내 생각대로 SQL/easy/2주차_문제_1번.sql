문제1번)  주문일이 2017-09-02 일에 해당 하는 주문건에 대해서,
어떤 고객이, 어떠한 상품에 대해서 얼마를 지불하여  상품을 구매했는지 확인해주세요.

     답 SQL 은 여기 

select o.customerid, od.productnumber,
	(od.quotedprice*od.quantityordered) as payments
from order_details as od
	join orders as o on od.ordernumber = o.ordernumber
where o.orderdate = '2017-09-02'
order by o.customerid, od.productnumber, payments desc