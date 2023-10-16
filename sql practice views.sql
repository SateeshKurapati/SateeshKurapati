-- simple view

use employee
select * from emp
create view v1 as select eid, ename, dno from emp where dno=10
select * from v1
insert into v1 values(4,'kalpana',10)
update v1 set ename='nanyatha' where eid=4
delete from v1 where eid=4
alter view v1 as select eid,ename,sal from emp where sal=40000
insert into v1 values(5,'varu',15000)
alter view v1 as select eid, ename, sal from emp where sal=50000 with check option




--complex view

use bank
select * from branchs
select * from customers
create view b1 as select branchs.bcode, branchs.bname, customers.cname from branchs, customers where branchs.bcode=customers.bcode
select * from b1



-functional view

use employee
select * from emp
create view b2 as select max(sal) as maximum from emp
select * from b2




--expression view

create view b3 as select eid,sal,(sal*12) as ansal from emp
select * from b3




--index object
--non unique

use practice
create table s1(eid int, ename varchar(10), sal int)
insert into s1 values(5,'ab',10000),(6,'cd',150000),(7,'ef',20000)
select * from s1
create index i1 on s1(ename)
select * from s1 where ename='cd'




--unique
create unique index i2 on s1(eid)
use bank
create unique index i3 on branchs(bcode)




--composite index
create index i4 on s1(ename,sal)
select ename,sal from s1
drop index i2

