-- Given the following relation schema:

-- employee(employee_name, street, city)

-- works(employee_name, company_name, salary)

-- company(company_name, city)

-- manages(employee_name, manager_name)

-- Find the names of all employees in the database who live in the same cities and on the same streets as do their managers.

select e.employee_name from
employee e join manages m on 
e.employee_name=m.employee_name
join
employee emp on
emp.employee_name = m.manager_name
where e.city = emp.city
and
e.street = emp.street;