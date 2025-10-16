-- Let's consider a table named orders with columns: order_id, customer_id, order_date, and total_amount. Write an SQL query to retrieve the total amount of orders placed in the month of June 2023.

select sum(total_amount) as total_amount_june_2023 from orders where 
STRFTIME('%Y', order_date) = '2023'
and
STRFTIME('%m', order_date) = '06';