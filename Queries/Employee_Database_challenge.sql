SELECT e.emp_no, 
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees e
LEFT JOIN titles t ON e.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no, t.from_date

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles rt
ORDER BY emp_no, to_date DESC;

-- Retirees by Title
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;