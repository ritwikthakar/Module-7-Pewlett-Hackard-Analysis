SELECT employees.emp_no,
       employees.first_name,
       employees.last_name,
       titles.title,
	   titles.from_date,
	   titles.to_date
INTO Retirement_Title	   
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY titles.emp_no;

Select * From Retirement_Title

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
first_name,
last_name,
title
INTO Unique_Title
FROM Retirement_Title
ORDER BY emp_no, to_date DESC;

Select * from Unique_Title

SELECT COUNT(title), title 
INTO Retiring_Titles
FROM Unique_Title
GROUP BY title
ORDER BY COUNT(title) desc;

select * from Retiring_Titles

SELECT DISTINCT ON (emp_no)
employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_emp.from_date,
dept_emp.to_date,
titles.title
INTO mentorship_eligibilty
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND titles.to_date = '9999-01-01'
ORDER BY employees.emp_no;

Select * From mentorship_eligibilty



