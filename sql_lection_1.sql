-- create database libpary;

use library;

 -- create table books(
-- id int auto_increment,
-- title varchar(128) not null,
-- author varchar(128) not null,
-- primary key(id)
-- );

-- insert into books(title, author) values("Заповіт", "Шевченко");
-- insert into books(title, author) values("Реве Дніпро", "Шевченко");
-- insert into books(title, author) values("Евгений Онегин", "Пушкин");

-- select * from books;
-- title from books;
-- select title, author from books;
-- select title from books where author = "Шевченко";
-- select distinct title from books where author = "Шевченко";
-- select distinct title from books where author like "Шев%";
-- select distinct title from books where author like "%кин";
-- select distinct title from books where author like "%ченк%";
-- select * from books order by title;
-- select * from books order by title desc;
-- select * from books where author <> "Пушкин";
-- select * from books where author not like "Пуш%";
-- select * from books where id > 1 and id < 4;
-- select * from books where id > 1 or id = 0;
-- select * from books where id between 3 and 7;
-- select * from books where id not between 3 and 7;
-- select * from books where title in ("Заповіт", "Реве Дніпро");
-- select * from books where title not in ("Заповіт", "Реве Дніпро");
-- select * from books where title is not null;
select * from books where title is not null or title = "";