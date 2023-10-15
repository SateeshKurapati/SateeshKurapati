--single row subquery

use employee
create table emp(eid int, ename varchar(20), sal int, dno int, loc varchar(20))
desc emp
insert into emp values(1,'sateesh',60000,10,'hyd'),(2,'sai',50000,11,'bnglr'),(3,'ambika',40000,12,'trvprm')
select * from emp
select max(sal) from emp
select * from emp where sal=(select max(sal) from emp)
select * from emp where sal>(select avg(sal) from emp where dno=10)
select * from emp where sal=(select sal from emp where ename='sateesh')
select * from emp where dno=(select dno from emp where ename='ambika')
select * from emp where dno=(select dno from emp where loc='bnglr')
select * from emp where dno!=(select dno from emp where loc='bnglr')


--multi row subquery

use employee
select * from emp
select sal from emp
select sal from emp where dno=10 or dno=11
select * from emp where sal in(select sal from emp where dno in(10,11))
select * from emp where sal not in(select sal from emp where dno in(10,11))
select * from emp where sal>any(select sal from emp where dno=12)
select * from emp where sal>all(select sal from emp where dno=11)
select * from emp where exists(select ename from emp where dno=10)
select * from emp where not exists(select ename from emp where dno=10)