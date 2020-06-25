use syntaxhrm_mysql;

select * 
from hs_hr_employees;

select upper(emp_firstname), emp_lastname,lower(emp_lastname)
from hs_hr_employees;

select count(*)
from hs_hr_employees;

select count(*)
from hs_hr_employees
where  emp_marital_status is not null;

select count(*) , emp_marital_status
from hs_hr_employees
where emp_marital_status is not null
group by emp_marital_status;

select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary;

select max(emp_birthday),emp_firstname
from hs_hr_employees;

select min(emp_birthday),emp_firstname
from hs_hr_employees;

select count(*), emp_gender
from hs_hr_employees
where emp_gender is not null
group by emp_gender;

select * from ohrm_job_title;
select * from hs_hr_employees;

select count(*),job_title_code
from hs_hr_employees
where job_title_code in(10,24)
group by job_title_code;

select count(*), job_title_code
from hs_hr_employees
where job_title_code is not null
group by job_title_code
having count(*)>3;

select max(emp_birthday),job_title_code
from hs_hr_employees
group by job_title_code
having max(emp_birthday) > '2000';

