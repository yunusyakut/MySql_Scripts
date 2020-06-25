use syntaxhrm_mysql;

-- Task

select Lower(emp_firstname), Upper(emp_lastname)
from hs_hr_employees;

select count(*)
from hs_hr_employees
where job_title_code is null;

select count(*)
from hs_hr_employees
where  emp_marital_status is not null;

select max(emp_birthday),emp_firstname
from hs_hr_employees;

select count(job_title_code)
from hs_hr_employees
where job_title_code= 10;

select count(*)
from hs_hr_employees
where emp_firstname like 'a%';

select count(job_title)
from ohrm_job_title
where job_title in ('Database administrators','Application Developers', 'Production Manager');


select count(*), job_title_code 
from hs_hr_employees 
where job_title_code in (8,9,14) 
group by job_title_code;


