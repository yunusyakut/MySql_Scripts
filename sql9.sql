-- class 4 pre work
use syntaxhrm_mysql;


select *
from hs_hr_emp_basicsalary;

-- average salary
select avg (ebsal_basic_salary)
from hs_hr_emp_basicsalary;

-- average that we pay per period and only see over than 85000
select avg(ebsal_basic_salary), payperiod_code
from hs_hr_emp_basicsalary
group by payperiod_code
having avg(ebsal_basic_salary)>5000;

-- subqueries

select *
from hs_hr_employees;

select *
from ohrm_job_title;
-- we want to display info of all employees who are IT Analyst

select id
from ohrm_job_title
where job_title = 'Developer';
select * 
from hs_hr_employees
where job_title_code = 10
order by emp_firstname;

-- subquery -- we want to display info of all employees who are developer
select emp_firstname , emp_lastname, job_title_code
from hs_hr_employees
where job_title_code =
(select id from ohrm_job_title where job_title = 'Developer'); -- excuting first

-- we want to display employee number, firstname, lastname of employees who are Turk 
select emp_number , emp_firstname , emp_lastname
from hs_hr_employees
where nation_code = 
(select id from ohrm_nationality where name = 'Turkish');

-- how to find second largest salary
select *
from hs_hr_emp_basicsalary;

select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
where ebsal_basic_salary <
(select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary);

-- second min salary

select min(ebsal_basic_salary)
from hs_hr_emp_basicsalary
where ebsal_basic_salary >
(select min(ebsal_basic_salary)
from hs_hr_emp_basicsalary);




-- -- -- -- -- -- -- -- --
-- task
-- List all employees who are Cloud Architects?
select *
from hs_hr_employees
where job_title_code =
(select id from ohrm_job_title where job_title = 'Cloud Architect');
-- How to retrieve information of the employee who earns the lowest salary?

select *
from hs_hr_employees
where  emp_number=
(select emp_number 
from hs_hr_emp_basicsalary where ebsal_basic_salary= -- to retrieve emp_number
(select min(ebsal_basic_salary) from hs_hr_emp_basicsalary)); -- to retrieve min salary

-- list all employees who are self employed
select *
from hs_hr_employees
where emp_status =
(select name from ohrm_employment_status where name = 'Self Employed');


-- Display emergency contact name and phone number of Adam Adams

select eec_name , eec_mobile_no
from hs_hr_emp_emergency_contacts
where emp_number = 
(select emp_number from hs_hr_employees where emp_firstname = 'Adam' and emp_lastname = 'Adams');

-- How can you display the third highest salary?

select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
where ebsal_basic_salary <
(select max(ebsal_basic_salary) 
from hs_hr_emp_basicsalary
where ebsal_basic_salary <
(select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary));

-- -- -- -- -- -- -- -- -- --
-- inner join

-- display info of employees first name , last name and nationality
select *
from ohrm_nationality;

select emp_firstname , emp_lastname, name
from hs_hr_employees as emp join ohrm_nationality as nat
on emp.nation_code = nat.id; -- fk = pk 

-- display emp_number , fname , lname and job title
select emp_number , emp_firstname , emp_lastname , job_title
from hs_hr_employees as a join ohrm_job_title as b
on a.job_title_code = b.id;



-- task -----------------------------------------------------------------------------
-- Display employees number, first name and
-- lastname and their employment status name.
-- Sort results based on the last name.

select emp_number , emp_firstname , emp_lastname , emp_status
from hs_hr_employees as a join ohrm_employment_status as b
on a.emp_status  = b.id
order by emp_lastname;

-- Display employees number, first name and lastname and job title only for Developers and Application Developers.

select emp_number , emp_firstname , emp_lastname ,  job_title
from hs_hr_employees join ohrm_job_title
on hs_hr_employees.job_title_code = ohrm_job_title.id
where job_title in ('Developer', 'Application Developer');


-- Display employees number, first name and nationality only for employees whose nationality starts with A.
select emp_number, emp_firstname , name
from hs_hr_employees join ohrm_nationality
on hs_hr_employees.nation_code = ohrm_nationality.id
where name like 'A%';
