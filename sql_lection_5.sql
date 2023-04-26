-- use library;

-- выбрать id, name, created_at из таблиц readers и employees
-- select id, name, created_at from readers
-- union
-- select id, name, created_at from employees;

-- select * from books;
-- select 
-- books.id, books.name, books.author, readers.name as "Читатель", readers.address as "Адрес читателя"
-- from books
-- left join readers
-- on books.reader_id = readers.id;

-- select 
-- books.id, books.name, books.author, readers.name as "Читатель", readers.address as "Адрес читателя"
-- from books
-- inner join readers
-- on books.reader_id = readers.id;

-- вывести books.id, books.name, books.author, employees.name как "Имя сотрудника" и employees.salary как "Зарплата сотрудника"
-- для всех книг

-- select books.id, books.name, books.author, employees.name as "Имя сотрудника", employees.salary as "Зарплата сотрудника",
-- readers.name as "Читатель", readers.address as "Адрес читателя"
-- from books
-- left join employees
-- on books.employee_id = employees.id
-- inner join readers
-- on books.reader_id = readers.id;


use hr;

-- select * from employees;
-- select * from departments;

-- вывести имя и фамилию всех сотрудников и название департамента, где они работают 

-- select employees.first_name, employees.last_name,
-- departments.department_name
-- from employees
-- left join departments
-- on employees.department_id = departments.department_id;

-- вывести имя и фамилию всех сотрудников и имя и фамилию их менеджера
-- select employees.first_name, employees.last_name,
-- managers.first_name, managers.last_name
-- from employees
-- inner join employees managers
-- on employees.manager_id = managers.employee_id;


-- вывести имя и фамилию тех сотрудников, которые зарабатывают больше, чем их менеджер

-- select employees.first_name, employees.last_name, 
-- managers.first_name, managers.last_name, employees.salary - managers.salary as "разница"
-- from employees
-- inner join employees managers
-- on employees.manager_id = managers.employee_id where employees.salary > managers.salary;


-- для всех сотрудников вывести имя, фамилию и город проживания

-- select employees.first_name, employees.last_name, 
-- locations.city
-- from employees
-- inner join departments
-- on employees.department_id = departments.department_id
-- inner join locations
-- on departments.location_id = locations.location_id;

-- select * from employees;
-- select * from locations;


-- вывести названия департаментов, где никто не работает

-- select departments.department_name 
-- from departments
-- left join employees
-- on employees.department_id = departments.department_id
-- where employees.employee_id is null;

-- вывести названия департаментов, где менеджеры получают > 10000

-- select departments.department_name
-- from departments
-- inner join employees
-- on employees.department_id = departments.department_id
-- where employees.salary > 10000 group by departments.department_name;

-- для каждого сотрудника вывести имя, фамилию, название должности

-- select employees.first_name, employees.last_name,  jobs.job_title
-- from employees
-- inner join jobs
-- on jobs.job_id = employees.job_id;

-- вывести все города из locations как имя города + страна

-- select locations.city, countries.country_name
-- from locations
-- inner join countries
-- on countries.country_id = locations.country_id;

-- для каждого сотрудника вывести его имя, зарплату, минимальную и максимальную зарплату
-- для его должности

-- select employees.first_name, employees.last_name, employees.salary, jobs.job_title, jobs.min_salary, jobs.max_salary
-- from employees
-- inner join jobs
-- on jobs.job_id = employees.job_id;

