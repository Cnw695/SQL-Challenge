--SELECT * FROM employees;
--ALTER TABLE employees 
--ALTER TABLE employees ALTER COLUMN emp_no primary KEY?

/*1.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM salaries
JOIN employees ON salaries.emp_no=employees.emp_no;


--2.
SELECT  first_name, last_name, hire_date FROM employees WHERE hire_date between '1918-01-01' and '1985-12-31';*/

--3.List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name, and start and end employment dates.
/*
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date 
FROM dept_manager
JOIN departments ON dept_manager.dept_no=departments.dept_no
JOIN employees ON dept_manager.emp_no=employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY dept_no;*/


--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
/*SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no;*/

--5.List all employees whose first name is "Hercules" and last names begin with "B."
--SELECT first_name, last_name FROM employees WHERE first_name='Hercules' AND last_name LIKE 'B%' 

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
--SELECT * FROM departments;
/*SELECT dept_emp.emp_no, dept_emp.dept_no, departments.dept_name,employees.last_name, employees.first_name, employees.emp_no
FROM departments
JOIN dept_emp ON dept_emp.dept_no=departments.dept_no
JOIN employees ON employees.emp_no=dept_emp.emp_no
WHERE departments.dept_no = 'd007';*/

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
/*SELECT dept_emp.emp_no, dept_emp.dept_no, departments.dept_name,employees.last_name, employees.first_name, employees.emp_no
FROM departments
JOIN dept_emp ON dept_emp.dept_no=departments.dept_no
JOIN employees ON employees.emp_no=dept_emp.emp_no
WHERE departments.dept_name LIKE 'Develop%' OR departments.dept_name='Sales';*/

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name;