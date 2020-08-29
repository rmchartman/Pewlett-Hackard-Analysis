select * from departments
select * from dept_manager
select * from dept_emp
select * from employees
select * from salaries
select * from titles

-- All Employees ready to retire #90,398
SELECT --COUNT(first_name) 
first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- all employees ready to retire born 1952 #21,209
SELECT --COUNT(first_name)
first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

-- all employees ready to retire born 1953 #22,857
SELECT --COUNT(first_name)
first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

-- all employees ready to retire born 1954 #23,228
SELECT --COUNT(first_name)
first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

-- all employees ready to retire born 1955 #23,109
SELECT --COUNT(first_name)
first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

-- All Employees ready to retire #41,380
SELECT --COUNT(first_name) 
first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');