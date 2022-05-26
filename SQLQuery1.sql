sp_help Person

create table Person(
personId int not null,
personName varchar(20)--not null
)
alter table Person alter column personId int not null
alter table Person add constraint pk_person primary key(personId)
--alter table Person add constraint un_Person unique(personId)
alter table Person drop constraint un_Person
alter table Person alter column Name varchar(40) not null --table create kartanach not null lihaycha. otherwise this way.
alter table Person add city varchar(50) --adding new column in the table
alter table Person drop column city  --removing column from the table 
alter table Person add Gender varchar(2)
alter table Person drop column Gender
alter table Person add Address varchar(200)
alter table Person drop column Address
alter table Person add Contact_Number int
alter table Person drop column Contact_Number
alter table Person add Telephone int
alter table Person drop column Telephone
alter table Person alter column personName varchar(15)
alter table Person alter column personName varchar(25)
sp_rename 'Person.personName','Name' --to rename a column sp_rename 'Tablename(dot)oldColumnName','NewColumnname'
sp_rename 'Person.Name','personName'
--check concept
alter table Person add Age int not null
alter table Person add constraint  chk_age check(Age>=18)

--table already exists and want to add col with default value
alter table Person add Country varchar(20) default 'India'

--column already exists and want to add default constraint
alter table Person add constraint default_con default 'India' for Country

--index
create index index_person on Person(personName, Country)

create unique index index_person2 on Person(personId)

--identity
-- alter table Person add personId int identity(1,1) for reference as of now.

---------------------------------------------------------------------------
insert into Person values(1,'A',20,'India')
update person set age = 22 where personId=1
insert into Person values(2,'B',22, 'India')

insert into Person values(3,'C',24, 'India')

insert into Person values(4, 'D',20, 'India')

insert into Person values(5, 'E',21, 'India')
insert into Person values(6, 'F',115, 'Japan')
insert into Person values(7,'G', 2000, 'Himalaya')
insert into Person values(8,'I', 45, 'India')
insert into Person values(9,'J', 35,'Bharat')
insert  into Person values(10, 'K',65,'Bharat')
--by default ghenyasathi

insert into Person(personId, personName, Age) values (11,'L',19)


sp_help Person
select * from Person
select personId from Person  --fakt personId column display zala
select personId, personName from Person
select Age from Person where Age < 50
select * from Person where Age <=30
select distinct Country from Person
select * from Person where age >=50
select * from Person where age <>2000

select * from Person where personId in (1,2,3,4,5)
select * from Person where personId not in  (1,2,3,4,5)
select * from Person where country in ('India','Japan')
select * from Person where age <=20
select * from Person where age not between 30 and 50
select * from Person where age between 30 and 50

--and/or/not operator
select * from Person where Country = 'India' and age <30
select * from Person where country = 'India' or country = 'Japan'
select * from Person where not country = 'India'

-------------------------------------------------------------------------
--like operator in sql
select * from Person where Country like 'I%' --starts with I
select * from Person where Country like '%I'--ends with I
select * from Person where Country like '%I%'--has I in that word
select * from Person where Country like 'B_____' --I know the length, I also know what it starts with. Tevdhe underscore waparle
select * from Person where Country like '____a'

select * from Person where Country like '[i-j]%' --from a to z range sarkha (any that starts from given chars).
select * from Person where Country like '[Hjai]%' --returning all that start with an character from the square brackt
select * from Person where Country like '%[i-j]' --from a to z range sarkha (any that ends from given chars).
select * from Person where Country like '%[Hjai]' --returning all that ends with an character from the square brackt


select * from Person where Country not like 'I%' --starts with I
select * from Person where Country  not like '%I'--ends with I
select * from Person where Country not like '%I%'--has I in that word
select * from Person where Country not like 'B_____' --I know the length, I also know what it starts with. Tevdhe underscore waparle
select * from Person where Country not like '____a'

-----------------------------------------------------------------------
--null values in SQL
--is null
--is not null

select * from Person where country is null --if no records means there's no record that has null value.
select * from Person where personName is not null -- if no record means that has null values in it
