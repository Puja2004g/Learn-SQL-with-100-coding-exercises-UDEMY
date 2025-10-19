-- From the following tables write a SQL query to find the order values greater than the average order value of 10th October 2012. Return ord_no, purch_amt, ord_date, customer_id, salesman_id.

select ord_no, purch_amt, ord_date, customer_id, salesman_id
from orders where ord_date = '2012-10-10' and  purch_amt >
(select avg(purch_amt) from orders where ord_date = '2012-10-10');