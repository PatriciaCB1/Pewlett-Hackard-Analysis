-- DELIVERABLE 1

-- Retrieve the emp_no, first_name, and last_name columns from the Employees table
-- Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
    t.from_date,
    t.to_date
-- Create a new INTO clause
INTO retirement_titles
-- Join both tables on the primary key 
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- SELECT * FROM retirement_titles;


-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title

INTO unique_titles 
FROM retirement_titles as rt
ORDER BY emp_no ASC, to_date DESC;

-- First, retrieve the number of titles from the Unique Titles table.
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
-- Group the table by title, then sort the count column in descending order.
FROM unique_titles as ut
-- Then, create a Retiring Titles table to hold the required information.
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;



-- DELIVERABLE 2

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
-- Create a new table using the INTO clause.
INTO mentorship_eligibilty
-- Join the Employees and the Department Employee tables on the primary key.
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
-- Join the Employees and the Titles tables on the primary key.
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
-- Filter the data on the to_date column to get current employees whose birth dates are between January 1, 1965 and December 31, 1965.
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = ('9999-01-01'))
-- Order the table by the employee number.
ORDER BY emp_no ASC;