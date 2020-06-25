use syntaxhrm_mysql;

select * from hs_hr_employees order by emp_number desc; -- order by statement asc or desc

select * from hs_hr_employees where emp_firstname = 'john' order by emp_number asc;

select * from hs_hr_employees where emp_birthday is null;

-- task 1

select * 
from hs_hr_employees 
where job_title_code is null;

select emp_firstname , emp_lastname 
from hs_hr_employees 
where emp_hm_telephone is null 
order by emp_firstname asc;

select * 
from hs_hr_employees 
where emp_birthday is not null 
order by emp_lastname desc
limit 5;
