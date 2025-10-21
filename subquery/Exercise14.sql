-- Write a query to find the sums of the amounts from the orders table, grouped by date, and eliminate all dates where the sum was not at least 1000.00 above the maximum order amount for that date.

select ord_date, SUM (purch_amt) from orders a
group by ord_date having sum(purch_amt) >= 
(select max(purch_amt) from orders b where
a.ord_date = b.ord_date) + 1000; 