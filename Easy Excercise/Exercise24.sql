-- Given the following relation schema:

-- employee(employee_name, street, city)

-- works(employee_name, company_name, salary)

-- company(company_name, city)

-- manages(employee_name, manager_name)

-- Find the name of the company that has the smallest payroll.

SELECT company_name
FROM works
GROUP BY company_name
HAVING SUM(salary) = (
    SELECT MIN(total_salary)
    FROM (
        SELECT SUM(salary) AS total_salary
        FROM works
        GROUP BY company_name
    ) AS company_totals
);