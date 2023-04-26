use tmp;

--  create table users(
-- id integer primary key auto_increment,
-- name varchar(128),
-- age integer check(age between 0 and 120),
-- email varchar(128)
-- );


-- insert into users(name, age, email) values("Mike", 20, "mike@hh.com");
-- insert into users(name, age, email) values("Bob", 34, "Bob@cc.com");
-- insert into users(name, age, email) values("Lena", 15, "bike@hh.com");
-- insert into users(name, age, email) values("Jon", 18, "JM@hh.com");
-- insert into users(name, age, email) values("Nata", 51, "na-na@hh.com");

-- select * from users;

-- create table employees(
--  id integer primary key auto_increment,
--  name varchar(128),
--  age integer check(age between 0 and 120),
--  phone varchar(128)
-- );

-- insert into employees(name, age, phone)values
--  ('Иван', 23, '+3746450730'),
--  ('Ольга', 35, '+37477755309'),
--  ('Игорь', 42, '+37445983335'),
--  ('Ирина', 39, '+37476333009');

-- select name, age from users
-- union all
-- select name, age from employees;

-- union отбросит все повторябщиеся записи;

-- insert into users(name, age, email)values
--  ('Иван', 23, 'ivan@gmail.com'),
--  ('Игнат', 35, 'ignat@gmail.com'),
--  ('Игорь', 42, 'igor@gmail.com'),
--  ('Степан', 42, 'stepan@gmail.com'),
--  ('Алина', 39, 'alina@gmail.com');

-- select name, age, phone, null as email from employees
-- union all
-- select name, age, null, email from users;

-- select name, age, phone, null as email, "employees" as type from employees
-- union all
-- select name, age, null, email, "users" as type  from users;

-- create table human as
-- select name, age, phone, null as email, "employees" as type from employees
-- union all
-- select name, age, null, email, "users" from users;

-- select * from human where age > 30;
-- select * from human where age not between 30 and 40;
select * from human where name like "_г%";


-- select * from human;