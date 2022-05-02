-- Module 7 Challenge

-- Deliverable 1: Number of retiring employees by title
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use distinct with orderby to remove duplicate rows.
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Number of retiring employees by title.
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Deliverable 2: Employees eligible for mentorship program.
SELECT  DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;


-- Deliverable 3: additional queries

-- Retiring employees by department.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name, de.from_date, de.to_date
INTO retiring_dept_one
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Remove duplicate rows.
SELECT DISTINCT ON (rdo.emp_no) rdo.emp_no, rdo.first_name, rdo.last_name, rdo.dept_name
INTO retiring_dept
FROM retiring_dept_one AS rdo
WHERE rdo.to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Number of retiring employees by department.
SELECT COUNT(rd.emp_no), rd.dept_name
INTO retiring_dept_count
FROM retiring_dept AS rd
GROUP BY dept_name
ORDER BY COUNT(dept_name) DESC;

-- Mentorship eligible employees by department.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name, de.from_date, de.to_date
INTO mentor_dept_one
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

-- Remove duplicate rows.
SELECT DISTINCT ON (mdo.emp_no) mdo.emp_no, mdo.first_name, mdo.last_name, mdo.dept_name
INTO mentor_dept
FROM mentor_dept_one AS mdo
WHERE mdo.to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Number of mentorship eligible employees by department.
SELECT COUNT(md.emp_no), md.dept_name
INTO mentor_dept_count
FROM mentor_dept AS md
GROUP BY dept_name
ORDER BY COUNT(dept_name) DESC;