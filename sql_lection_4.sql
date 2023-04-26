-- use library;

-- select * from books;

-- DELETE COLUMN
/*
alter table books
add inv_number integer default 0;
*/
/*
alter table books
modify inv_number integer default 1;
*/
-- insert into books(title, author)  values("Три мушкетера", "Александр Дюма");
/*
alter table books
modify inv_number varchar(128) default "000/000";
*/
-- insert into books(title, author)  values("Три мушкетера. 20 лет спустя", "Александр Дюма");
/*
update books
set inv_number = null ;
*/
/*
alter table books
modify inv_number varchar(128) default "000/000";
*/
-- insert into books(title, author)  values("Сказка о Царе Салтане", "Александр Пушкин");
/* 
update books
set inv_number = 1
where inv_number = null ;
*/
-- show columns from books;
-- show tables;
/*
update books
set inv_number = "111/111"
where title = "Тараканище"; 
*/

-- RENAME COLUMN
 -- alter table books change inv_number inventory_number varchar(255);
/*
alter table books
drop column inventory_number;
*/
-- delete from books where id = 13;
-- update books  set id = 13  where id = 17;

--  insert into books(id, title, author) values(17, "Три поросёнка", "Народная");
-- alter table books add is_deleted integer default 0;
/*
update books
set is_deleted = 1
where author = "Александр Пушкин";
*/

-- select * from books;



-- use library;
/*
 create table readers(
id integer primary key auto_increment,
name varchar(255) not null,
address varchar(255)
);

insert into readers(name, address) values("Петя", "Мира, д. 17");
insert into readers(name, address) values("Маша", "Луначарского, д. 7");
insert into readers(name, address) values("Витя", "Распутина, д. 13");
*/

-- Добавить новую колонку date_of_birth
-- тип DATE, может быть пустым
-- поставить дни рождения ребят в следующем порядке:
-- Петя 2010-01-01
-- Маша 2011-02-02
-- Витя 2010-10-10
/*
alter table readers
add date_of_birth date;

update readers
set date_of_birth = "2010-01-01" where name = "Петя";
update readers
set date_of_birth = "2011-02-02" where name = "Маша";
update readers
set date_of_birth = "2010-10-10" where name = "Витя";
*/
/*
alter table readers 
add created_at timestamp default current_timestamp;
alter table readers 
add update_at timestamp default current_timestamp on update current_timestamp;
*/

-- CHANGE NAME
/*
update readers
set name = "Петя" where name = "Петр";
*/

-- переименовать колонку date_of_birth в birth_date и поставить значение по умолчанию 
-- равное текущей дате 
-- чтобы проверить, создайте новую строку с name = "Коля" и address = "ул. Лунтика, д. 99"
/*
alter table readers change date_of_birth birth_date date default(current_date);
insert into readers(name, address) values("Коля", "ул. Лунтика, д. 99");
*/

-- HOME WORK

-- use library;

-- в таблице books создать колонки created_at и updated_at (логика колонок идентична логике в readers)
-- alter table books add created_at timestamp default current_timestamp;
-- alter table books add updated_at timestamp default current_timestamp on update current_timestamp;

-- в таблице books переименовать колонку title в name
-- alter table books change title name varchar(255);

-- в таблице readers реализовать механизм soft delete
-- alter table readers add is_deleted int default 0;

-- use hr;
-- работаем в таблице hr: посчитать среднюю зарплату для каждого департамента
-- select department_id, avg(salary) "average_salary" from employees group by department_id;

-- работаем в таблице hr: посчитать разницу между максимальной и минимальной зарплатой для каждого департамента
-- select department_id, max(salary)-min(salary) "salary_difference" from employees group by department_id;

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

select * from books;

-- select * from employees;



