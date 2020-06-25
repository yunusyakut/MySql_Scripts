use syntaxhrm_mysql;

select * from hs_hr_emp_dependents; -- display all dependents table

select emp_lastname from hs_hr_employees; -- display only lastname from employees

select job_title from ohrm_job_title; -- display all job title from jobtitle table

select employee_id,emp_firstname,emp_lastname from hs_hr_employees; -- display is, name and lastname from employee table

select * from hs_hr_emp_language;


select emp_firstname , emp_lastname 
from hs_hr_employees 
order by emp_firstname desc;
select distinct emp_firstname from hs_hr_employees order by emp_firstname desc;
select distinct emp_firstname from hs_hr_employees where not emp_firstname='yunus' order by emp_firstname desc;

select emp_firstname 
from hs_hr_employees 
where emp_birthday is null 
order by emp_firstname desc;

select emp_firstname , emp_lastname , emp_birthday
from hs_hr_employees
where emp_birthday is not null;

select * 
from hs_hr_employees 
where emp_firstname = 'john' 
and emp_lastname= 'Yakut';

select * 
from hs_hr_employees
where employee_id = '13290' 
or employee_id = '13288'
or employee_id = '13292';

select *
from hs_hr_employees
where employee_id = 13288
and emp_firstname = 'Mars'
and emp_lastname = 'red';

select * from ohrm_job_title where not job_title = 'bakery chef';

select * 
from hs_hr_employees 
where employee_id in (13288,13290,13292);

select * 
from hs_hr_employees
where emp_firstname in('john','yunus') and emp_lastname in ('Yakut','doe');

select emp_firstname ,  emp_lastname , employee_id
from hs_hr_employees
where employee_id between 11123 and 13288
order by employee_id desc;

select * 
from hs_hr_employees
where emp_firstname like 'an%';

select * 
from hs_hr_employees
where emp_firstname like '%a';

select * 
from hs_hr_employees
where emp_firstname like 'j%a';

select emp_firstname, emp_lastname , emp_birthday
from hs_hr_employees
where emp_birthday > '2000%';


select *
from hs_hr_employees;

select count(emp_number), emp_lastname
from hs_hr_employees
group by emp_firstname
order by emp_lastname desc;

select count(*) , emp_firstname , emp_lastname
from hs_hr_employees
group by emp_lastname
having count(*) >5;





