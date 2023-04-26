-- select * from employees;

-- select * from employees;
-- alter table books
-- add reader_id int;

-- alter table books
-- add foreign key (reader_id) references readers(id);

-- update books
-- set reader_id = 2
-- where id = 1;


-- alter table employees
-- add employee_id int;

-- alter table employees
-- add foreign key (employee_id) references employees(id);

-- update employees
-- set employee_id = 1
-- where id = 1;

-- alter table books
-- add employee_id int;

-- alter table books
-- add foreign key (employee_id) references employees(id);

-- update books
-- set employee_id = 1
-- where id = 1;

-- update books
-- set employee_id = 1 
-- where id = 2;

-- update books
-- set reader_id = 4 
-- where id = 2;

-- select * from books;

-- select * from employees;




-- в базе данных hr
-- создать таблицу citizens с полями id (auto increment) и name
-- создать таблицу real_estate с полями id (auto increment) и address

use hr;
-- create table citizens(
-- id integer primary key auto_increment,
-- name varchar(255)
-- );

-- create table real_estate(
-- id integer primary key auto_increment,
-- address varchar(255)
-- );

-- insert into citizens(name) values("Иван");
-- insert into citizens(name) values("Мария");
-- insert into citizens(name) values("Игнат");

-- insert into real_estate(address) values("ул. Мира, д. 17");
-- insert into real_estate(address) values("ул. Алабяна, д. 3");
-- insert into real_estate(address) values("Беверли-Хиллз 90\2010");


-- select * from citizens;
-- select * from real_estate;

-- Дз
-- у одного жителя может быть много домов. Реализовать механизм связи между домом и жителем.
-- проверка: написать запрос, который вернёт все дома гражданина с id = 1

-- у одно жителя может быть много домов и у одного дома может быть несколько владельцев
-- реализовать механизм связи многие ко многим в рамках этой задачи

-- select * from readers;
-- select * from employees;



