--Subquery / inner query
select max(salary) from employee1

select firstName from employee1 where salary = (select max(salary) from employee1)

select max(salary) from employee1 where salary <> (select max(salary) from employee1) --this will give second max salary

select firstName from employee1 where salary = (select max(salary) from employee1 where salary <> (select max(salary) from employee1))

--now third max salary

select max(salary) from employee1 where salary < (select max(salary) from employee1 where salary < (select max(salary) from employee1))

--now displaying the person who takes this salary
create view thirdmaxSalary as
select firstName from employee1 where salary =(select max(salary) from employee1 where salary < (select max(salary) from employee1 where salary < (select max(salary) from employee1)))

select * from thirdmaxSalary

select * from customer2
select * from order2
select * from employee1
--display name of emps who take higher salary than specific emp id
select * from employee1 where empId in(select empId from employee1 where salary > (select salary from employee1 where empId = 112211) )

--display emp details whose city is same as specific empId
select * from employee1 where city in(select city from employee1 where empId = 112210)

--display emp whose salary is higher than avg salary
select * from employee1 where salary > (select avg(salary) from employee1)

select firstname,did, salary from employee1 where salary > all (select avg(salary) from employee1 group by did)

select d1.dname ,sum(salary) from employee1 e1, tbldeptName d1  where e1.did=d1.did group by d1.dname

select sum(salary) from employee1 group by did
select * from tbldeptName

(select avg(salary) from employee1 e1, tbldeptName d1 where d1.dname = 'sales' and e1.did = d1.did)
(select avg(salary) from employee1  where did = 103)

select* from employee1 e1, tbldeptName d1 where d1.dname = 'sales' and e1.did = d1.did and salary > ((select avg(salary) from employee1 e1, tbldeptName d1 where d1.dname = 'sales' and e1.did = d1.did))

update employee1 set salary = salary * 1.30 where did = (select did from tbldeptName where dname = 'Finance')

