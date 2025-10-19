-- From the following tables, write a SQL query to find those salespeople who earned the maximum commission. Return ord_no, purch_amt, ord_date, and salesman_id.

select ord_no, purch_amt, ord_date, salesman_id from orders
where salesman_id = (select salesman_id from salesman where commission =
(select max(commission) from salesman));