alter table Orders add productName varchar(50)
alter table Orders add price int
insert into Orders values(1,1001,1,'Mobile',45000)
insert into Orders values(2,1002,1,'Kindle',25000)
insert into Orders values(3,1003,1,'Watch',12000)
insert into Orders values(4,1004,1,'Tab',40000)

insert into Orders values(5,1005,3,'Mobile',45000)
insert into Orders values(6,1006,3,'Kindle',25000)
insert into Orders values(7,1007,3,'Watch',12000)
insert into Orders values(8,1008,3,'Tab',40000)


select * from Orders
select p.personName, p.age,p.country, o.productName,o.price from Person p inner join Orders o on o.personId = p.personId
select p.personName, p.age,p.country, o.productName,o.price from Person p left join Orders o on o.personId = p.personId
select p.personName, p.age,p.country, o.productName,o.price from Person p right join Orders o on o.personId = p.personId

--------------------------------------------------------------
--concept of seft join
create table Manager(
id int primary key,
name varchar(20)
)
select * from employee1
alter table employee1 add managerid int
update employee1 set managerid = 112210 where empId in(112211,112212,112213,112214,112215)
update employee1 set managerid = 112216 where empId in(112217,112218,112219,112220,112221)
update employee1 set managerid = 112222 where empId in(112223,112224,112225,112226,112227,112228,112229)

select et1.firstName as Emp_Name, et2.firstName as Manager_Name
from employee1 et1, employee1 et2 where et1.managerid = et2.empId

---------------------------------------------------------------------------------------
create table tblstudy(
studId varchar(5),
courseId varchar(5),
year int
)
select * from tblstudy
insert into tblstudy values('s1','c1',2014)
insert into tblstudy values('s1','c2',2015)
insert into tblstudy values('s2','c1',2015)
insert into tblstudy values('s2','c2',2015)
insert into tblstudy values('s2','c3',2018)
insert into tblstudy values('s3','c1',2012)
insert into tblstudy values('s3','c2',2013)
insert into tblstudy values('s3','c3',2018)
insert into tblstudy values('s4','c1',2019)
insert into tblstudy values('s4','c2',2022)

select st1.studId, st1.courseId, st1.year
from tblstudy st1, tblstudy st2
where st1.studId=st2.studId and st1.courseId<>st2.courseId

----------------------------------------------------------------------------------
alter table employee1 drop column deptName
alter table employee1 add did int

select * from employee1
--------------------------------------------

--created table of department names against their IDs. These Ids will be used for mapping in emp table.
create table tbldeptName(
did int primary key,
dname varchar(10)
)
insert into tbldeptName values(101,'Finance')
insert into tbldeptName values(102,'Purchase')
insert into tbldeptName values(103,'Sales')
insert into tbldeptName values(104,'Marketing')
insert into tbldeptName values(105,'Quality')
insert into tbldeptName values(106,'Serivce')
insert into tbldeptName values(107,'Legal')
insert into tbldeptName values(108,'Development')
insert into tbldeptName values(109,'HR')


select * from tbldeptName
---------------------------------------Emplyee table update kela with did
update employee1 set did = 101 where empId = 112210
update employee1 set did = 101 where empId = 112211
update employee1 set did = 102 where empId = 112212
update employee1 set did = 102 where empId = 112213
update employee1 set did = 103 where empId = 112214
update employee1 set did = 103 where empId = 112215
update employee1 set did = 104 where empId = 112216
update employee1 set did = 104 where empId = 112217
update employee1 set did = 105 where empId = 112218
update employee1 set did = 105 where empId = 112219
update employee1 set did = 106 where empId = 112220
update employee1 set did = 106 where empId = 112221
update employee1 set did = 107 where empId = 112222
update employee1 set did = 107 where empId = 112223
update employee1 set did = 104 where empId = 112224
update employee1 set did = 104 where empId = 112225
update employee1 set did = 101 where empId = 112226
update employee1 set did = 101 where empId = 112227
update employee1 set did = 109 where empId = 112228
update employee1 set did = 109 where empId = 112229

---------------------Various join types
select et1.empId,et1.firstName, et1.lastName, et1.salary, et1.city,dt1.dname
from employee1 et1 inner join tbldeptName dt1 on dt1.did = et1.did

select et1.empId,et1.firstName, et1.lastName, et1.salary, et1.city,dt1.dname
from employee1 et1 left join tbldeptName dt1 on dt1.did = et1.did

select et1.empId,et1.firstName, et1.lastName, et1.salary, et1.city,dt1.dname
from employee1 et1 right join tbldeptName dt1 on dt1.did = et1.did

select et1.empId,et1.firstName, et1.lastName, et1.salary, et1.city,dt1.dname
from employee1 et1 full join tbldeptName dt1 on dt1.did = et1.did
---------------------------------------Some conditions
--display employee who work in specific department

select et1.empId,et1.firstName, et1.lastName, et1.salary, et1.city,dt1.dname
from employee1 et1 inner join tbldeptName dt1 on dt1.did = et1.did where et1.did = 101

select et1.empId,et1.firstName, et1.lastName, et1.salary, et1.city,dt1.dname
from employee1 et1 inner join tbldeptName dt1 on dt1.did = et1.did where et1.did = 101 order by salary desc

select et1.empId,et1.firstName, et1.lastName, et1.salary, et1.city,dt1.dname
from employee1 et1 inner join tbldeptName dt1 on dt1.did = et1.did where et1.did = 103 order by firstName

select et1.firstName, et1.lastName,et1.salary,dt1.dname
from employee1 et1 inner join tbldeptName dt1 on dt1.did = et1.did order by firstName, salary desc


---------------------------------------------------------------------------------------------
--display emp count in hr and sales dep using having clause
select did, count(empId) as Emp_Count from employee1 group by did having did in (103,109)
select dname, count(did) as Emp_Count from tbldeptName group by dname having dname in ('hr','sales')

---------------------------------------------------------------------------------------------

select SUBSTRING(firstName,0,5) as tempname from employee1 where empId = 112222
select CONCAT(firstName,' ', lastName) as Full_Name from employee1
select firstName,LEN(firstName) as Name from employee1
select UPPER (firstName) as Name from employee1
select LOWER(firstName) as Name from employee1
select ROUND(salary,4) as Round_Sala from employee1
select CAST(salary as varchar(20)) from employee1
select REVERSE(firstName) as reve_name from employee1
select REPLACE(firstName,'Gaurav','Bhaargav') as Updated_Name from employee1
select ROUND(12345.6789,3) as Roundvalue