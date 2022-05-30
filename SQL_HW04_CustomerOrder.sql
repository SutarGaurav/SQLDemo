create table customer2(
c_id int primary key,
c_name varchar(20),
city varchar(20),
grade varchar (5)
)
-------------------------
create table salesman2(
salesman_id int primary key,
sname varchar(20),
city varchar(20),
commission numeric,
)
--------------------------
create table order2(
order_id int primary key,
purchase_amt int,
order_date date,

)
-------------------------------------------------------

insert into customer2 values(101,'CA','Pune', 'A')
insert into customer2 values(102,'CB','Mumbai', 'B')
insert into customer2 values(103,'CC','Nashik', 'C')
insert into customer2 values(104,'CD','Jalgaon', 'B')
insert into customer2 values(105,'CE','Akola', 'C')
insert into customer2 values(106,'CF','Sangli', 'A')
insert into customer2 values(107,'CG','Satara', 'C')
insert into customer2 values(108,'CH','Dhule', 'A')
insert into customer2 values(109,'CI','Baner', 'C')
insert into customer2 values(110,'CJ','Pune', 'A')

alter table customer2 add salesman_id int
update customer2 set salesman_id = 501 where c_id in(101,102) 
update customer2 set salesman_id = 502 where c_id in(103,104) 
update customer2 set salesman_id = 503 where c_id in(105,106) 
update customer2 set salesman_id = 504 where c_id in(107,108) 
update customer2 set salesman_id = 505 where c_id in(109,110) 
alter table customer2 add constraint cs_fk_salesmanid foreign key (salesman_id) references salesman2(salesman_id)

select * from customer2

-------------------------------------------------------------
insert into salesman2 values(501,'SA','Pune', 0.20)
insert into salesman2 values(502,'SB','Nashik', 0.10)
insert into salesman2 values(503,'SC','Dhule', 0.25)
insert into salesman2 values(504,'SD','Nashik', 0.05)
insert into salesman2 values(505,'SE','Pune', 0.15)

select * from salesman2
-------------------------------------------------------------
insert into order2 values(1100,15000,getdate())
insert into order2 values(1101,1100,getdate())
insert into order2 values(1102,25000,getdate())
insert into order2 values(1103,45000,getdate())
insert into order2 values(1104,12000,getdate())
insert into order2 values(1105,5000,getdate())
insert into order2 values(1106,9500,getdate())
insert into order2 values(1107,2553,getdate())
insert into order2 values(1108,14563,getdate())
insert into order2 values(1109,2525,getdate())

alter table order2 add c_id int
alter table order2 add salesman_id int
update order2 set c_id = 101 where order_id =1100
update order2 set c_id = 102 where order_id =1101
update order2 set c_id = 103 where order_id =1102
update order2 set c_id = 104 where order_id =1103
update order2 set c_id = 105 where order_id =1104
update order2 set c_id = 106 where order_id =1105
update order2 set c_id = 107 where order_id =1106
update order2 set c_id = 108 where order_id =1107
update order2 set c_id = 109 where order_id =1108
update order2 set c_id = 110 where order_id =1109

update order2 set salesman_id = 501 where c_id in(101,102) 
update order2 set salesman_id = 502 where c_id in(103,104) 
update order2 set salesman_id = 503 where c_id in(105,106) 
update order2 set salesman_id = 504 where c_id in(107,108) 
update order2 set salesman_id = 505 where c_id in(109,110) 

alter table order2 add constraint cs_fk_cid foreign key(c_id) references customer2(c_id)
alter table order2 add constraint cs_o_fk_salesmanid foreign key (salesman_id) references salesman2(salesman_id)
select * from order2

------------------------------------------------------------------------
------------------------------------------------------------------------
--01.Display all customers
select * from customer2

--02.Display customers from specific city
select * from customer2 where city = 'Pune'

--03.Display customers who has specific grade
select * from customer2 where grade ='A'

--04.Display customers with specific grade and specific city
select * from customer2 where grade = 'B' and city = 'Mumbai'

--05.Display customers with ascending grades
select * from customer2 order by grade

--06.Display customers with descending grades
select * from customer2 order by grade desc

--07.Display customers whose city name starts with specific character
select * from customer2 where city like 'M%'

--08.Display customers whose city name ends with specific character
select * from customer2 where city like '%E'

--09.Display customers whose city names start with some range
select * from customer2 where city like '[PMD]%'

--10.Display customers whose city names ends with some range
select * from customer2 where city like '%[ABC]'

--11.Display customers from Pune and Mumbai
select * from customer2 where city in ('Pune','Mumbai')

--12.Display customers whose city name does not start with specific character
select * from customer2 where not city like 'P%'

--13.Display customers whose city name does not end with specific character
select * from customer2 where not city like '%i'

--14.Display all customers except from Pune and Mumbai
select * from customer2 where not city in ('pune', 'mumbai')

--15.Display all salesman
select * from salesman2

--16. Display salesman from specific city
select * from salesman2 where city = 'Dhule'

--17. Display salesman whose city starts with specific character
select * from salesman2 where city like 's%'

--18.Display salesmans from city whose name ends with specific character
select * from salesman2 where city like '%f'

--19. Display salesman from all cities except from specific city
select * from salesman2 where not city = 'Mumbai'

--20.Display distinct cities from customer table
select distinct city from customer2

--21.Inner Join
select * from customer2 inner join salesman2 on customer2.salesman_id = salesman2.salesman_id

--22 For three tables
select * from ((customer2 inner join salesman2 on customer2.salesman_id = salesman2.salesman_id)
inner join order2 on salesman2.salesman_id = order2.salesman_id)