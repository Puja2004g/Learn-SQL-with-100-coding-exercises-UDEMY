-- From the following tables, write a SQL query to find the most expensive product of each company. Return Product Name, Price and Company.

SELECT i.pro_name AS "Product Name", i.pro_price AS Price, c.com_name AS Company
FROM item_mast i
JOIN company_mast c ON i.pro_com = c.com_id
WHERE i.pro_price = (
    SELECT MAX(pro_price)
    FROM item_mast
    WHERE pro_com = i.pro_com
);