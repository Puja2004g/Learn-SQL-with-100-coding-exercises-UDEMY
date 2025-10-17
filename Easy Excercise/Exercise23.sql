-- Given the following relation schema:

-- employee(employee_name, street, city)

-- works(employee_name, company_name, salary)

-- company(company_name, city)

-- manages(employee_name, manager_name)

-- Find the names of all employees who earn more than the average salary of all employees of their company. Assume that all people work for at most one company.

select w.employee_name from
works w where w.salary >
(select avg(w1.salary) from works w1
where w.company_name = w1.company_name)