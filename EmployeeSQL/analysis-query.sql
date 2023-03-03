--list the employee number, last name, first name, sex, and salary
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s on s.emp_no=e.emp_no;

--List the first name, last name, and hire date of employees hired in 1986
select first_name,last_name, hire_date from employees
where substring(hire_date, 7, 4) = '1986';

--list the department number, department name, employee number, last name, and first name of the managers of each department
select dm.dept_no,d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e 
join dept_manager as dm on e.emp_no=dm.emp_no
join departments as d on dm.dept_no=d.dept_no;

--List the department number, department name, employee number, last name, and first name of each employee
select de.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on de.dept_no=d.dept_no;

--List the frist name, last name, and sex of all employees with the first name 'Hercules' whos last name begins with the letter 'B'
select first_name, last_name, sex from employees 
where first_name = 'Hercules' and last_name like '%B%';

--List the employee number, last name, and first name of all employees in the Sales department
select e.emp_no, e.last_name, e.first_name
from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on de.dept_no=d.dept_no
where dept_name = 'Sales';

--List the employee number, last name, and first name of all employees in the Sales department and the Development department
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on de.dept_no=d.dept_no
where dept_name='Sales' or dept_name='Development';

--List the frequency count of last names in descending order
select last_name, count(*) 
from employees
group by last_name
order by count(*) desc;
