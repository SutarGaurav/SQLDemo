create table Person(
personId int,
personName varchar(20)--not null
)
alter table Person add constraint un_Person unique(personId)
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



select * from Person