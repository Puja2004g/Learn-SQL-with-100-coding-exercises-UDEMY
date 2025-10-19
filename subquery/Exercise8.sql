-- From the following tables write a SQL query to count the number of customers with grades above the average in New York City. Return grade and count.

SELECT grade, COUNT (*) FROM customer Group by grade HAVING grade > 
(select AVG(grade) FROM customer WHERE city = 'New York');