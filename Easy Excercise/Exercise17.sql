-- Given the following relation schema:

-- employee(employee_name, street, city)

-- works(employee_name, company_name, salary)

-- company(company_name, city)

-- manages(employee_name, manager_name)

-- Retrieve the names, street addresses, and cities of residence for all employees who are employed by 'First Bank Corporation' and earn more than $10,000.

 select e.employee_name, e.street, e.city from
 employee e join works w on
 e.employee_name = w.employee_name
 join
 company c on
 c.company_name = w.company_name
 where c.company_name="First Bank Corporation" and w.salary > 10000;