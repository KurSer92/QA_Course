--1)������� ������� employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null);

--2)��������� ������� employee 70 ��������.
insert into employees (id, employee_name)
values (default, 'Laura Thompson');

select * from employees e 

--3)������� ������� salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null);

--4)��������� ������� salary 15 �������� �� 1000 �� 1500:
insert into salary (id, monthly_salary)
values (default, 2500);

select * from salary

--5)������� ������� employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

--6)��������� ������� salary 40 ��������:
--- � 10 ����� �� 40 �������� �������������� employee_id

insert into employee_salary (id, employee_id, salary_id)
values (default, 51, 14);

select * from employee_salary es 

--7)������� ������� roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique);
	
--8)�������� ��� ������ role_name � int �� varchar(30)
alter table roles 
alter role_name type varchar(30);

--9)��������� ������� salary 20 ��������:
insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');

select * from roles

--10) ������� ������� roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
--- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id));
		
--11)��������� ������� roles_employee 40 ��������:
	
insert into roles_employee (id, employee_id, role_id)
values (default, 44, 14);
	
select * from roles_employee re 