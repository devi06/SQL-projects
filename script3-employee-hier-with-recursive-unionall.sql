--given a table employees which consists of employee_name,employee_id and manager_id
--display the employees supervisor hierarchy

create table employees(employee_name character varying,employee_id numeric,manager_id numeric)
insert into employees
values('tommy', 10, 4)
select * from employees


with RECURSIVE emp_hier(employee_id,manager_id,employee_name,mgr_level) 
AS(
select employee_id,manager_id,employee_name,0
from employees
where employee_id =1

union ALL
	
select e.employee_id,e.manager_id,e.employee_name,eh.mgr_level+1
from employees e
join emp_hier eh
on e.manager_id = eh.employee_id )

select * from emp_hier 
