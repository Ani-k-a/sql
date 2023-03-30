-- use hr;
-- select * from employees;
/*
select sum(salary),
sum(salary),
max(salary),
min(salary),
avg(salary)
from employees;
*/

/*
select
department_id,
avg(salary)
from employees
group by department_id;
*/

/*
select 
job_id, 
max(salary)
from employees 
group by job_id;

*/

-- use tmp;
/*
create table orders(
 id integer,
 customer_id integer,
 product_id integer,
 amount integer
);

insert into orders values(1,  6,    8,   5);
insert into orders values(2,  5,    8,   1);
insert into orders values(3,  11,   2,   3);
insert into orders values(4,  2,    2,   4);
insert into orders values(5,  3,    2,   1);
insert into orders values(6,  3,    5,   5);
insert into orders values(7,  2,    2,   1);
insert into orders values(8,  10,   2,   4);
insert into orders values(9,  8,    5,   6);
insert into orders values(10, 11,   10,  4);
insert into orders values(11, 2,    1,   1);
insert into orders values(12, 9,    5,   1);
insert into orders values(13, 8,    8,   3);
insert into orders values(14, 5,    1,   3);
insert into orders values(15, 3,    7,   2);
insert into orders values(16, 6,    8,   3);
insert into orders values(17, 3,    5,   3);
insert into orders values(18, 6,    1,   6);
insert into orders values(19, 8,    10,  5);
*/
-- select * from orders;
-- select customer_id, sum(amount) from orders group by customer_id;
-- select customer_id , sum(amount) from orders group by customer_id order by customer_id;

 use hr;
/*
select 
count(*),
count(commission_pct),
count(distinct commission_pct)
from employees;
*/
/*
select employee_id, salary, 
case 
when salary < 4000 then 1
when salary < 9000 then 2
else 3
end
 as salary_group from employees;
*/
 /*
 select  
case 
when salary < 4000 then 1
when salary < 9000 then 2
else 3
end
 as salary_group,
 count(*) as cnt
 from employees
 group by case 
when salary < 4000 then 1
when salary < 9000 then 2
else 3
end;
*/

-- найти у каждого менеджера кол-во сотрудников
-- select * from employees;

select 
   manager_id, 
count(employee_id)
from employees 
where manager_id is not null 
group by manager_id;