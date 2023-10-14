use company
select * from emps
select sal, max(sal), min(sal) from emps group by 
select sal, max(sal), min(sal) from emps group by sal having max(sal)>30000
select sal, count(eid) from emps group by sal having count(sal)>=2
select sal,count(eid) from emps group by sal with rollup