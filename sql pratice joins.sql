create database practice
use practice
create table a(eno int, ename varchar(10))
create table b(eno int, dname varchar(10))
insert into a values(1,'x'),(2,'y'),(3,'z')
insert into b values(2,'y'),(3,'m'),(4,'n')
select * from a 
select * from b
--equi join
--non ansi
select a.eno, a.ename, b.dname from a,b where a.eno=b.eno
--ansi
select a.eno, a.ename, b.dname from a inner join b on a.eno=b.eno
--non equi join
select a.eno, a.ename, b.dname from a,b where a.eno!=b.eno
--left outer
select a.eno, a.ename, b.dname from a left join b on a.eno=b.eno
--right outer
select a.eno, a.ename, b.dname from a right join b on a.eno=b.eno
--full outer
select a.eno, a.ename from a union select b.eno,b.dname from b
--cross join
select * from a cross join b
--natural join
select a.ename, b.dname from a natural join b
--self join
use bank
select * from managers
select a.ena, b.ena afrom managers a, managers b where a.mgr=b.eid

use practice
create table c(eno int, job varchar(20))
insert into c values(2,'hr'),(3,'clerk'),(4,'acct')
select * from a,b,c 
select a.eno=b.eno and b.eno from a,b,c where a.eno=b.eno and b.eno=c.eno 
select a.eno, b.eno, c.eno from a left join b on a.eno=b.eno left join c on b.eno=c.eno
select a.ename,b.dame,c.job from a natural join b natural join c


