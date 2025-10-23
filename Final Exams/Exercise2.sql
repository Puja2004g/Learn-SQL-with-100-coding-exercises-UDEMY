-- From the following tables write a SQL query to calculate the average price of each manufacturer's product of 350 or more. Return Average Price and Company.

select avg(i.pro_price) as "Average Price", c.com_name as Company
from 
item_mast i join company_mast c 
on 
i.pro_com = c.com_id
group by c.com_name
having avg(i.pro_price) >= 350;