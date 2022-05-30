sp_help
create table employee1(
empId int primary key identity(112210,1) not null,
firstName varchar(20) not null,
lastName varchar(20) not null,
salary int not null,
city varchar(20),
deptName varchar(20) not null
)
insert into employee1 values('Gaurav', 'Sutar',123456,'Pune', 'Finance')
insert into employee1 values('Tanaya', 'Jadhav',20000,'Pune', 'Finance')
insert into employee1 values('Sanjana', 'Pawar',25000,'Mumbai', 'Purchase')
insert into employee1 values('Sayali', 'Vashist',30000,'Mumbai', 'Purchase')
insert into employee1 values('Manali', 'Sharma',33000,'Mumbai', 'Sales')
insert into employee1 values('Roshan', 'Waghere',45000,'Mumbai', 'Sales')
insert into employee1 values('Niranjan', 'Ingle',98000,'Pune', 'Marketing')
insert into employee1 values('Abhishek', 'Rakshe',35000,'Pune', 'Marketing')
insert into employee1 values('Rahul', 'Bodhe',33500,'Nagpur', 'Development')
insert into employee1 values('Vijay', 'Deshmukh',48000,'Amaravati', 'Development')
insert into employee1 values('Amruta', 'Joshi',75000,'Akola', 'Legal')
insert into employee1 values('Bhairavi', 'Mane',65000,'Jalgaon', 'Legal')
insert into employee1 values('Kunal', 'Patil',22000,'Dhule', 'Quality')
insert into employee1 values('Anaya', 'Varma',40000,'Nashik', 'Quality')
insert into employee1 values('Gautami', 'Birla',57000,'Sangli', 'Services')
insert into employee1 values('Devashree', 'Yadav',125000,'Satara', 'Services')
insert into employee1 values('Parna', 'Joshi',87000,'Hinjevadi', 'Supply Chain')
insert into employee1 values('Puja', 'Kate',58000,'Nanded', 'Supply Chain')
insert into employee1 values('Vaibhav', 'Thorat',18000,'Lonavala', 'Human Resource')
insert into employee1 values('Manjula', 'Pawar',45000,'Baner', 'Human Resource')
----------------------------------------------------------------------------------------
--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
select firstname as First_Name, lastname as Last_Name from employee1

--Write a query to get unique department ID from employee table
select distinct empId from employee1

--Write a query to get all employee details from employee table display in descending order
select * from employee1 order by firstName

--Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column



--------------------------------------------------
--28/05/2022
--Subquery

