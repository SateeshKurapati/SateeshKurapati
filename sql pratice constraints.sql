create database bank
use bank
create table branchs(bcode int primary key, bname varchar(10))
desc branchs
insert into branchs values(10,'hyd'),(11,'delhi'),(12,'chennai')
select * from branchs
create table customers(acno int primary key, cname varchar(10) not null, bal int check(bal>=1000), atmo varchar(10) unique, addr varchar(10) default 'kp', bcode int, constraint fk foreign key(bcode) references branchs(bcode)) 
insert into customers values(100,'sateesh',4000,'sb10','kphb',10)
insert into customers values(101,'surya',3000,'sb11','ameerpet',10)
insert into customers(acno,cname,bal) values(102,'athik',2000)
select * from customers
insert into customers values(103,'ramesh',1000,'sb1','miyapur',11)
desc customers
show tables

--multiple primary keys
create table t1(eno int primary key, pid int unique not null)
select * from t1

--composite key
create table t2(eno int, ename varchar(20), primary key(eno,ename))
insert into t2 values(10,'x'),(10,'y'),(11,'y'),(11,'z')
select * from t2

--self foreign key
create table managers(eid int primary key, ena varchar(10), mgr int, constraint sfk foreign key(mgr) references managers(eid))
insert into managers values(1,'x',null),(2,'y',1),(3,'z',1),(4,'m',2)
select * from managers