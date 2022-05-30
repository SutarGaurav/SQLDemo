create table product1(
pId int primary key not null identity (45001,1),
descr varchar(50),
price int
)
insert into product1 values('Product 1',500)
insert into product1 values('Product 2',1000)
insert into product1 values('Product 3',2000)
insert into product1 values('Product 4',5000)
insert into product1 values('Product 5',400)
insert into product1 values('Product 6',800)
insert into product1 values('Product 7',1300)
insert into product1 values('Product 8',1700)
insert into product1 values('Product 9',100)
insert into product1 values('Product 10',50)
---------------------------------------------------
--15.Use the MIN function to select the record with the smallest value of the Price column.
select min(price) from product1 

--16.Use an SQL function to select the record with the highest value of the Price column.
select max(price) from product1

--17.Use the correct function to return the number of records that have the Price value set to 20
select * from product1 where price = 800

--18.Use an SQL function to calculate the average price of all products.
select avg(price) as Average_Price from product1

--19.Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) as Total_Sum from product1

--31.Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from product1 where price between 500 and 5000

--32.Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from product1 where not price between 500 and 5000

--33.Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from product1 where descr like '[p]%'