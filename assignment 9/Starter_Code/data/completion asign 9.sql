create Table department_manager(dept_no text,emp_no integer)
drop table department_manager

select emp_no, last_name, first_name, sex, salary from employees

SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        employees.sex,
        salaries.salary
		
FROM employees 
    LEFT JOIN salaries 
    ON employees.emp_no = salaries.emp_no;
	
select first_name,last_name,hire_date
From employees
where hire_date between '1986-01-01' and '1986-12-31';

select department_manager.dept_no, department_manager.emp_no, employees.last_name, employees.first_name
from department_manager
  left join employees on department_manager.emp_no=employees.emp_no;
  
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name
FROM department_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (dm.emp_no = e.emp_no);
		
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

SELECT emp_no, e.last_name, e.first_name
FROM employees e
JOIN departments d ON dept_name = dept_name
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN departments d ON d.dept_name = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;