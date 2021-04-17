--Recomended code for Recommendation 1
SELECT COUNT(title), title 
FROM mentorship_eligibilty
GROUP BY title
ORDER BY COUNT(title) desc;


--Recomended code for Recommendation 2
SELECT employees.emp_no,
       employees.first_name,
       employees.last_name,
       titles.title,
	   titles.from_date
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (from_date BETWEEN '1985-01-01' AND '1995-12-31')
