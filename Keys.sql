
sp_help Orders
create table Orders(
orderId int not null,
orderNo int not null,
personId int not null,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key(personId) references Person(personId)

)
--check

