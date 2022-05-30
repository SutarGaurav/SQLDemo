sp_help Course3
create table Course3(
cname varchar(20),
cfees int,
cduration int,
csize int,
ctrainer varchar(20),
constraint pk_Course3 primary key(cduration, ctrainer), --multiple col la ad karu shakto
)
alter table Course1 drop constraint pk_Course1
alter table Course1 alter column cname varchar(20) not null
alter table Course1 alter column cfees int not null
alter table Course1 alter column cduration int not null
alter table Course1 alter column csize int not null
alter table Course1 add constraint pk_Course1 primary key(cname)
alter table Course1 add constraint pk_course2 primary key(cfees)
--alter table Co1urse add constraint un_Course unique(cname)
alter table  Course alter column ctrainer varchar(20) not null
alter table Course add clocation varchar(30)
alter table Course drop column clocation

select * from Course1
