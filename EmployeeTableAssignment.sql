create table employee(
empId int primary key identity(112210,1) not null,
firstName varchar(20) not null,
lastName varchar(20) not null,
salary int not null,
city varchar(20),
deptName varchar(20) not null
)
insert into employee values('Gaurav', 'Sutar',123456,'Pune', 'Finance')
insert into employee values('Tanaya', 'Jadhav',20000,'Pune', 'Finance')
insert into employee values('Sanjana', 'Pawar',25000,'Mumbai', 'Purchase')
insert into employee values('Sayali', 'Vashist',30000,'Mumbai', 'Purchase')
insert into employee values('Manali', 'Sharma',33000,'Mumbai', 'Sales')
insert into employee values('Roshan', 'Waghere',45000,'Mumbai', 'Sales')
insert into employee values('Niranjan', 'Ingle',98000,'Pune', 'Marketing')
insert into employee values('Abhishek', 'Rakshe',35000,'Pune', 'Marketing')
insert into employee values('Rahul', 'Bodhe',33500,'Nagpur', 'Development')
insert into employee values('Vijay', 'Deshmukh',48000,'Amaravati', 'Development')
insert into employee values('Amruta', 'Joshi',75000,'Akola', 'Legal')
insert into employee values('Bhairavi', 'Mane',65000,'Jalgaon', 'Legal')
insert into employee values('Kunal', 'Patil',22000,'Dhule', 'Quality')
insert into employee values('Anaya', 'Varma',40000,'Nashik', 'Quality')
insert into employee values('Gautami', 'Birla',57000,'Sangli', 'Services')
insert into employee values('Devashree', 'Yadav',125000,'Satara', 'Services')
insert into employee values('Parna', 'Joshi',87000,'Hinjevadi', 'Supply Chain')
insert into employee values('Puja', 'Kate',58000,'Nanded', 'Supply Chain')
insert into employee values('Vaibhav', 'Thorat',18000,'Lonavala', 'Human Resource')
insert into employee values('Manjula', 'Pawar',45000,'Baner', 'Human Resource')


select * from employee --displaying all employees
select * from employee where deptName = 'Sales' --employees from specific department
select * from employee where salary > 35000 --having specific salary
select * from employee where city in('Pune', 'Mumbai') --from specific location
select * from employee where salary between 25000 and 30000 --having salary within certain range
select * from employee where firstName like 'T%' --name starting with certain char
select * from employee where lastName like 'T%'--name ending with certain char
select * from employee where firstName like '%A'--name starting with certain char
select * from employee where lastName like '%A'--name ending with certain char
select distinct deptName from employee --unique column records for specific column
select * from employee where not deptName in('Human Resource','Sales') --apart from specific departments

select * from employee order by salary --ascending/increasing
select * from employee order by salary desc --descending/decreadsing


----------------------------------------------------------------------------------------------------------
--Aggregate Function
--1.Count 2.Sum 3. Avg 4.Max 5.Min
select count(deptName) from employee --total department ale
select count(distinct deptName) from employee--unique total departments
select count(*) from employee --total count ale

select sum(salary) as TotalSum from employee--total salary from table
select avg(salary) as AvgSalary from employee
select max(salary) as MaxSalary from employee
select min(salary) as MinSalary from employee

----------------------------------------------------------------------------------------------------------------
--group by clause ex group of city vagaire. grp jeva banvaychay teva vaparto.
--group by groups rows that have a same values into the summary
select * from employee
select city from employee
select city from employee group by city
select city,count(empId) as Employee_Count from employee group by city

select deptName, count(empId) as EMP_Count from employee group by deptName

select firstname,lastname, salary,pf=salary*0.12 from employee
