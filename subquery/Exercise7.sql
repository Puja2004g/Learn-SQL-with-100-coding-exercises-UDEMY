-- Write a query to display all the customers whose ID is 2001 below the salesperson ID of Mc Lyon.

select * from customer where customer_id = 
(select salesman_id - 2001 from salesman where name = 'Mc Lyon') ;