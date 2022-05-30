create table customerRef(
id int primary key identity(110001,1) not null,
cName varchar(40) not null,
city varchar(40) not null,
postalCode int not null,
country varchar(40) not null
)
select * from customerRef
insert into customerRef values('Isabella Johns','Amsterdam',100019, 'Netherlands')
insert into customerRef values('Brock Zieme','Amsterdam',100056, 'Netherlands')
insert into customerRef values('Devonte Howell','Paris',200455, 'Franse')
insert into customerRef values('Martina Herzog','Paris',200019, 'Franse')
insert into customerRef values('Jessyca Mertz','Oslo',155019, 'Norway')
insert into customerRef values('Esteban Buckridge','Oslo',155444, 'Norway')
insert into customerRef values('Agnes Franecki','Berlin',331210, 'Germany')
insert into customerRef values('Genevieve Ondricka','Berlin',332213, 'Germany')
insert into customerRef values('Constance Jones','London',224455, 'United Kingdom')
insert into customerRef values('Bobby Bauch','London',224455, 'United Kingdom')
insert into customerRef values('Zackery Block','Madrid',664561, 'Spain')
insert into customerRef values('Winnifred Bahringer','Madrid',661225, 'Spain')
insert into customerRef values('Hosea Boehm','Rome',554564, 'Italy')
insert into customerRef values('Milford Wisoky','Rome',557564, 'Italy')
insert into customerRef values('Erika Raynor','Brussels',771231, 'Belgium')
insert into customerRef values('Clifford Stroman','Brussels',773231, 'Belgium')
insert into customerRef values('Tracy Parisian','Bern',881231, 'Switzerland')
insert into customerRef values('Aric Pfannerstill','Bern',882231, 'Switzerland')
insert into customerRef values('Claire Labadie','Dublin',500112, 'Ireland')
insert into customerRef values('Earnestine Oberbrunner','Stockholm',600545, 'Sweden')
