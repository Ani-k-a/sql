use tmp;

/* Напишите запрос, который создаст таблицу employee с полями
id - целое число
name - строка с длинной 128
lastname - строка с длинной 128
salary - целое число */
/*
 create table employee(
id integer,
name varchar(128),
lastname varchar(128),
salary integer
); */

-- добавить 5 записей
/*
insert into employee(id, name, lastname, salary) values(1, "Helen", "Hotcher", 3500);
insert into employee(id, name, lastname, salary) values(2, "Mike", "Kartney", 2900);
insert into employee(id, name, lastname, salary) values(3, "Lisa", "Li", 5300);
insert into employee(id, name, lastname, salary) values(4, "David", "Braun", 8000);
insert into employee(id, name, lastname, salary) values(5, "Jon", "Lenon", 10000);
*/
-- удаление не по ключу
-- SET SQL_SAFE_UPDATES = 0;

-- всем сотрудникам, у которых зп меньше 2000 установить зп 2000
/*
update employee
set salary = 2000 where salary < 2000;
*/

-- всем сотрудникам, у которых зп больше 3000 увеличить зп на 200 единиц
/*
update employee
set salary= salary + 200 where salary > 3000;
*/
-- написать запрос, который удаляет всех пользователей, у которых фамилия заканчивается не на "ов"
-- delete  from employee where lastname like "%ey";

select * from employee;




