----****** Data Analysis ******-----
-- 1. List the employee number, last name, first name, sex, and salary of each employee.

	SELECT emp.emp_no
	,emp.last_name
	,emp.first_name
	,emp.sex
	,sal.salary
	FROM public.employees emp
	INNER JOIN public.salaries sal
	on emp.emp_no = sal.emp_no;
		 
-- 2. List the fist name, last name, and hire date for the employees whow were hired in 1986
	
	SELECT emp.first_name
	,emp.last_name
	,emp.hire_date
	FROM public.employees emp
	WHERE LEFT(CAST(emp.hire_date as varchar(10)),4) = '1986'
	ORDER BY 3 ASC;
	
-- 3. List the manager of each department along with their deparment number, department name,
-- employee number, last name, and first name
	SELECT DISTINCT dm.dept_no
	,dt.dept_name
	,emp.emp_no
	,emp.last_name
	,emp.first_name
	FROM public.dept_manager dm
	INNER JOIN public.employees emp
	ON dm.emp_no = emp.emp_no
	INNER JOIN public.dept dt
	on dt.dept_no = dm.dept_no;

-- 4. List the department number for each employee along with that employee's employee number,
-- last name, first name, and department name

	SELECT DISTINCT de.dept_no
	,emp.emp_no
	,emp.last_name
	,emp.first_name
	,dt.dept_name
	FROM public.employees emp
	INNER JOIN public.dept_emp de
	ON de.emp_no = emp.emp_no
	INNER JOIN public.dept dt
	ON de.dept_no = dt.dept_no
	ORDER BY 2 ASC
	;

-- 5. List first name, last name and sex of each employee whose first 
-- name is Hercules and whose last name begins with the letter B.

	SELECT DISTINCT 
	emp.first_name
	,emp.last_name
	,emp.sex
	FROM public.employees emp
	WHERE UPPER(emp.first_name) like '%HERCULES%'
	AND UPPER(emp.last_name) like 'B%'
	ORDER BY 1 ASC
	;
	
-- 6. List each employee in the Sales department, incluiding their employee number,
-- last name, and first name

	SELECT DISTINCT emp.emp_no
	,emp.last_name
	,emp.first_name
	--,de.dept_no
	,dt.dept_name
	FROM public.employees emp
	INNER JOIN public.dept_emp de
	ON de.emp_no = emp.emp_no
	INNER JOIN public.dept dt
	ON de.dept_no = dt.dept_no
	WHERE UPPER(dt.dept_name) = 'SALES'
	ORDER BY 1 ASC
	;
	
-- 7. List each employee in the Sales and Development departments, including
-- their employee number, last name, fist name, and department name.

	SELECT DISTINCT emp.emp_no
	,emp.last_name
	,emp.first_name
	--,de.dept_no
	,dt.dept_name
	FROM public.employees emp
	INNER JOIN public.dept_emp de
	ON de.emp_no = emp.emp_no
	INNER JOIN public.dept dt
	ON de.dept_no = dt.dept_no
	WHERE UPPER(dt.dept_name) IN ('SALES','DEVELOPMENT')
	ORDER BY 1 ASC
	;

-- 8.List the frequency counts in desccending order, of all the employee last
-- names (that is, how many employees share each last name)

	SELECT COUNT(emp.last_name) 
	, emp.last_name
	FROM public.employees emp
	GROUP BY emp.last_name
	ORDER BY 1 DESC;


	
	
	
