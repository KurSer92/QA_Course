--1)Ñîçäàòü òàáëèöó employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null);

--2)Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.
insert into employees (id, employee_name)
values (default, 'Laura Thompson');

select * from employees e 

--3)Ñîçäàòü òàáëèöó salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null);

--4)Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè îò 1000 äî 1500:
insert into salary (id, monthly_salary)
values (default, 2500);

select * from salary

--5)Ñîçäàòü òàáëèöó employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

--6)Íàïîëíèòü òàáëèöó salary 40 ñòðîêàìè:
--- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id

insert into employee_salary (id, employee_id, salary_id)
values (default, 51, 14);

select * from employee_salary es 

--7)Ñîçäàòü òàáëèöó roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique);
	
--8)Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)
alter table roles 
alter role_name type varchar(30);

--9)Íàïîëíèòü òàáëèöó salary 20 ñòðîêàìè:
insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');

select * from roles

--10) Ñîçäàòü òàáëèöó roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
--- role_id. Int, not null (âíåøíèé êëþ÷ äëÿ òàáëèöû roles, ïîëå id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id));
		
--11)Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè:
	
insert into roles_employee (id, employee_id, role_id)
values (default, 44, 14);
	
select * from roles_employee
