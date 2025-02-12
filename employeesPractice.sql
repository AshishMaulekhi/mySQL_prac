SELECT * FROM amitdb1.employees;
select empName, empdept,empSallary from amitdb1.employees;
select empName, empdept,empSallary,
case 
when empSallary > 30000 then 'rich'
when empSallary < 15000 then 'poor'
when empSallary between 23000 and 23500 then 'medial class log'
else 'veryrich or veryporr'
end as financialCondition
from amitdb1.employees;
#case statement use for conditional perpuse  like if else .
#delete command use for to delete specific row and column from table .after deleteing all row the structure of table remain unaffected;
update  amitdb1.employees 
set empSallary=40000
where id=1;
drop database sys;
show databases;
use amitdb1;
select avg(empSallary) from amitdb1.employees;
select max(empSallary) from amitdb1.employees;
select sum(empSallary) from amitdb1.employees;
#bydefault record are sort in asscending order
select * from amitdb1.employees
order by empSallary desc;
# auto increment allow to add unique element which generate atomatically on inserting the new record in the table;
