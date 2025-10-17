-- Given the following relation schema:

-- employee(employee_name, street, city)

-- works(employee_name, company_name, salary)

-- company(company_name, city)

-- manages(employee_name, manager_name)

-- Find the names of all employees in the database who do not work for 'First Bank Corporation'. Assume that all people work for exactly one company.

select e.employee_name from
employee e join works w on
e.employee_name = w.employee_name
where w.company_name!="First Bank Corporation"
order by e.employee_name;