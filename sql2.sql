use syntaxhrm_mysql;

select emp_firstname,emp_lastname from hs_hr_employees where employee_id = 11123;

select distinct eec_relationship from hs_hr_emp_emergency_contacts;

select eexp_employer,eexp_jobtit from hs_hr_emp_work_experience where emp_number =9451;

select * from hs_hr_employees where emp_birthday <'1980-01-01';