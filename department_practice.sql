SELECT * FROM amitdb1.department;
SELECT deptid, deptname, deptzone from amitdb1.department where deptname='civil';
alter table amitdb1.department add deptpoint int ;
update amitdb1.department set deptpoint = 11 where deptid=1;
alter table amitdb1.department drop column deptpoint ;
alter table amitdb1.department
modify deptpoint varchar(30);
select distinct deptname from amitdb1.department;
/* where clause is use to filter the record  */
select * from amitdb1.department
where deptzone in ('delhi','nodia');
update  amitdb1.department
set deptzone='greater_noida' where deptzone='nodia';
#hello how are you this is comment 
select count(deptname) as numberdept from amitdb1.department
where deptname='civil';
# alias --> use for to give meaningfull name to the column just like above durinng count deptname
select deptname as dn ,deptzone as dz from amitdb1.department;
select deptzone ,deptpoint from amitdb1.department 
where deptzone not in ('delhi','nodia'); # opposte of in statement 
# in statement use when we have to retrive the data from multiple column which satisfy some condtion
# like statement use for to search the spacific pattern in the table
select * from amitdb1.department
where deptname like 'c%';# deptname start with c -->% use for multiple character and ( _ ) underscore use for single character
select * from amitdb1.department
where deptzone like '%a';# department zone ending with a
select * from amitdb1.department
where deptname like '___i%';
# between -->select value in given range
select * from amitdb1.department
where deptid between 2 and 5;
# not between --> opposite of above
select * from amitdb1.department
where deptid not between 3 and 5;
# case --> it use when we to render the data base on condition same as if and else
select deptzone, deptname ,case thought when deptzone=nodia then 'fight'when deptzone=delhi then 'election'else 'enjoy life' from amitdb1.department




