-- You have a table named orders with the following columns: order_id, customer_id, order_date, and total_amount. How would you write an SQL query to find the total amount of all orders placed in the year 2023?

select sum(total_amount) as total_amount_2023 from orders
where STRFTIME('%Y', order_date) = '2023';