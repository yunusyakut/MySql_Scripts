use syntaxhrm_mysql;

select emp_firstname from hs_hr_employees where employee_id = 11123 and emp_lastname='bulbulses';

select* from hs_hr_employees where emp_birthday is null or job_title_code is null;

select * from hs_hr_employees where not emp_birthday is null and not emp_lastname is null;


select *
from hs_hr_employees
where emp_lastname like '%a';

select *
from ohrm_location
where not country_code in('US','CA','BR');

select *
from hs_hr_employees
where emp_birthday between '1980-01-01' and '2000-12-31';

select *
from ohrm_nationality
where name like 'C%';

select *
from hs_hr_employees
where emp_birthday like '___%08%__'
order by emp_lastname asc;

select  *
from ohrm_job_title , hs_hr_employees
where job_title like '%manager';

select emp_firstname, emp_lastname, emp_birthday  
from hs_hr_employees,ohrm_job_title
where job_title in ('Freelancer','Developer')