create table Course(
cname varchar(20),
cfees int,
cduration int,
csize int,
ctrainer varchar(20)
)
alter table Course add constraint un_Course unique(cname)
alter table  Course alter column ctrainer varchar(20) not null
alter table Course add clocation varchar(30)
alter table Course drop column clocation

select * from Course
