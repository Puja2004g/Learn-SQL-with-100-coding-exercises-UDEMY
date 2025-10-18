-- SQL statement to generate a report with customer name, city, order number, 
-- order date, order amount, salesperson name, and commission to determine if any of 
-- the existing customers have not placed orders or if they have placed orders through 
-- their salesman or by themselves.

select c.cust_name,c.city as 'customer_city', 
o.ord_no, o.ord_date, o.purch_amt,
s.name as salesman_name, s.commission from
customer c left join orders o
on
c.customer_id = o.customer_id
left join salesman s on 
s.salesman_id = c.salesman_id
order by c.cust_name, o.ord_date asc;