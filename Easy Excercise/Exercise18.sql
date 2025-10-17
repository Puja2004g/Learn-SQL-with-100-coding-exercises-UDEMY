-- Given the following relation schema:

-- employee(employee_name, street, city)

-- works(employee_name, company_name, salary)

-- company(company_name, city)

-- manages(employee_name, manager_name)

-- Find the names of all distinct employee names who work in the same city as their company.

select distinct(e.employee_name) from
employee e  join works w on
e.employee_name = w.employee_name
join
company c on
w.company_name = c.company_name
where e.city = c.city;