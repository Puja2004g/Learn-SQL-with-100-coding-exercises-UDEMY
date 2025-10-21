-- Write a query to extract all data from the customer table if and only if one or more of the customers in the customer table are located in London.

select customer_id,cust_name, city from customer where exists 
(select * from customer where city='London');