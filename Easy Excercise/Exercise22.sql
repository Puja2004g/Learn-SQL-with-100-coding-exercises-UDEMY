-- Given the following relation schema:

-- employee(employee_name, street, city)

-- works(employee_name, company_name, salary)

-- company(company_name, city)

-- manages(employee_name, manager_name)

-- Assume that the companies may be located in several cities. Find all companies located in every city in which 'Small Bank Corporation' is located.

select company_name from
company where
city = (select city from company where company_name='Small Bank Corporation');