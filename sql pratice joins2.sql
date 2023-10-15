use practice
create table dept (dno int primary key, dname varchar(20))
insert into dept values(1,'it'),(2,'net')
create table emps(dno int, ena varchar(20), constraint fk1 foreign key(dno) references dept(dno))
insert into emps values(1,'x'),(1,'y'),(null,'z')
select * from emps
select * from dept
select dept.dno, dept.dname,emps.ena from dept, emps where dept.dno=emps.dno


create table books(bid int primary key, bna varchar(20))
insert into books values(10,'c'),(11,'cpp'),(12,'java')
create table authors(bid int, ana varchar(20), constraint fk2 foreign key(bid) references books(bid) on delete cascade)
insert into authors values(10,'rit'),(10,'ken'),(12,'james')
create table cust(bid int, cna varchar(20), constraint fk3 foreign key(bid) references books(bid) on delete cascade)
insert into cust values(10,'xyz'),(10,'mnp'),(12,'ijk')
select * from books
select * from authors
select * from cust
select books.bid, books.bna, authors.ana, cust.cna from books inner join authors on books.bid=authors.bid inner join cust on authors.bid=cust.bid
select * from books,authors,cust


create table e1(eid int primary key, ena varchar(20))
insert into e1 values(1,'x'),(2,'y')
create table p1(pid int primary key, ena varchar(20))
insert into p1 values(100,'java'),(101,'python')
create table ep(eid int, constraint fk4 foreign key(eid) references e1(eid) on delete cascade, pid int, constraint fk5 foreign key(pid) references p1(pid) on delete cascade)
insert into ep values(2,'100'),(1,'101')
select * from e1 
select * from p1
select * from ep
select * from e1,p1,ep