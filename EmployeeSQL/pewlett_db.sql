Select * From employees Join salaries on employees.emp_no = salaries.emp_no
Select employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
	From employees Join salaries on employees.emp_no = salaries.emp_no


Select employees.hire_date, employees.first_name, employees.last_name
	From employees
	where hire_date >='1/1/1986'
	and hire_date <='12/31/1986'
	

Select employees.emp_no, employees.last_name, employees.first_name, dept_manager.dept_no, departments.dept_name
	From employees 
	Join dept_manager on employees.emp_no = dept_manager.emp_no
	Join departments on dept_manager.dept_no = departments.dept_no
	order by dept_name


Select employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
	From employees 
	Join dept_emp on employees.emp_no = dept_emp.emp_no
	Join departments on dept_emp.dept_no = departments.dept_no
	order by dept_no


Select employees.first_name, employees.last_name, employees.sex
	From employees
	where first_name ='Hercules'
	and last_name like 'B%'
	

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	From employees 
	Join dept_emp on employees.emp_no = dept_emp.emp_no
	Join departments on dept_emp.dept_no = departments.dept_no
	where dept_name = 'Sales'


Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	From employees 
	Join dept_emp on employees.emp_no = dept_emp.emp_no
	Join departments on dept_emp.dept_no = departments.dept_no
	where dept_name = 'Sales' or dept_name = 'Development'
	order by emp_no


Select employees.last_name,count(employees.last_name) From Employees
	Group by employees.last_name
	order by count(employees.last_name) desc
	