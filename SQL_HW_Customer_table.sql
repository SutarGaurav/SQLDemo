create table customer1(
id int primary key identity(110001,1) not null,
cName varchar(40) not null,
city varchar(40) not null,
postalCode int not null,
country varchar(40) not null
)
select * from customer1
insert into customer1 values('Isabella Johns','Amsterdam',100019, 'Netherlands')
insert into customer1 values('Brock Zieme','Amsterdam',100056, 'Netherlands')
insert into customer1 values('Devonte Howell','Paris',200455, 'Franse')
insert into customer1 values('Martina Herzog','Paris',200019, 'Franse')
insert into customer1 values('Jessyca Mertz','Oslo',155019, 'Norway')
insert into customer1 values('Esteban Buckridge','Oslo',155444, 'Norway')
insert into customer1 values('Agnes Franecki','Berlin',331210, 'Germany')
insert into customer1 values('Genevieve Ondricka','Berlin',332213, 'Germany')
insert into customer1 values('Constance Jones','London',224455, 'United Kingdom')
insert into customer1 values('Bobby Bauch','London',224455, 'United Kingdom')
insert into customer1 values('Zackery Block','Madrid',664561, 'Spain')
insert into customer1 values('Winnifred Bahringer','Madrid',661225, 'Spain')
insert into customer1 values('Hosea Boehm','Rome',554564, 'Italy')
insert into customer1 values('Milford Wisoky','Rome',557564, 'Italy')
insert into customer1 values('Erika Raynor','Brussels',771231, 'Belgium')
insert into customer1 values('Clifford Stroman','Brussels',773231, 'Belgium')
insert into customer1 values('Tracy Parisian','Bern',881231, 'Switzerland')
insert into customer1 values('Aric Pfannerstill','Bern',882231, 'Switzerland')
insert into customer1 values('Claire Labadie','Dublin',500112, 'Ireland')
insert into customer1 values('Earnestine Oberbrunner','Stockholm',600545, 'Sweden')
------------------------------------------------------------------------------------
update customer1 set country=  'France' where postalCode = 200455
update customer1 set country=  'France' where postalCode = 200019
------------------------------------------------------------------------------------
--Write a statement that will select the City column from the Customers table
select city from customer1

--Select all the different values from the Country column in the Customers table.
select distinct country from customer1

--Select all records where the City column has the value London
select * from customer1 where city = 'London'

--Use the NOT keyword to select all records where City is NOT "Berlin"
select * from customer1 where not city = 'Berlin'

--5.Select all records where the CustomerID column has the value 21(23)
select * from customer1 where id = 110021

--6.Select all records where the City column has the value 'Berlin' and the PostalCode column has the value (121110) 331210.
select * from customer1 where postalCode = 331210 and city = 'Berlin'

--7.Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer1 where city in('Berlin', 'London')

--8.Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer1 order by city

--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer1 order by city desc

--10.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City


--11.Select all records from the Customers where the PostalCode column is empty.
select * from customer1 where postalCode is null

--12.Select all records from the Customers where the PostalCode column is NOT empty.
select * from customer1 where postalCode is not null

--13.Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway"

--14.Delete all the records from the Customers table where the Country value is 'Norway'
delete from customer1 where country = 'Norway'

--15.
--16.
--17.
--18.
--19.
--20.Select all records where the value of the City column starts with the letter "a".
select * from customer1 where city like 'a%'

--21.Select all records where the value of the City column ends with the letter "a".
select * from customer1 where city like '%a'

--22.Select all records where the value of the City column contains the letter "a"
select * from customer1 where city like '%a%'

--23.Select all records where the value of the City column starts with letter "a" and ends with the letter "b"
select * from customer1 where city like ('a%m')

--24.Select all records where the value of the City column does NOT start with the letter "a".
select * from customer1 where city not like 'a%'

--25.Select all records where the second letter of the City is an "a".
select * from customer1 where city like '_a%'

--26.Select all records where the first letter of the City is an "a" or a "c" or an "s"
select * from customer1 where city like '[acs]%'

--27.Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from customer1 where city like '[a-t]%'

--28.Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customer1 where city  not like '[acf]%'

--29.Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customer1 where country in('Norway', 'France')

--30.Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customer1 where not country in('Norway', 'France')

--31.
--32.
--33.

--34.When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
 select *,postalCode as Pno from customer1

 --35.When displaying the Customers table, refer to the table as Consumers instead of Customers.
  
  --36.List the number of customers in each country.
  select country,count(id) as Customer_Count from customer1 group by country

  --37.List the number of customers in each country, ordered by the country with the most customers first.
select country,count(id) as Customer_Count from customer1 group by country order by Customer_Count desc