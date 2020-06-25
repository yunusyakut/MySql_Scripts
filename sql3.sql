use syntaxhrm_mysql;

select emp_number 
from hs_hr_emp_language
 where fluency = 'good';

select years_of_exp 
from hs_hr_emp_skill 
where emp_number = 9451;

select * 
from ohrm_language 
where id = 11123;

select id , display_name 
from ohrm_user_role 
where id = 11123;

select emp_firstname , employee_id , emp_lastname 
from hs_hr_employees 
where emp_birthday = '1970/11/11';

select employee_id 
from hs_hr_employees 
where city_code = 'Roswell';
