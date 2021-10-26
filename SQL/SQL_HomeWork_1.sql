--1. ������� ��� ���� � ��� ������.
select * from students

--2. ������� ���� ��������� � �������
select * from students

--3. ������� ������ Id �������������
select id from students

--4. ������� ������ ��� �������������
select name from students

--5. ������� ������ email �������������
select email from students

--6. ������� ��� � email �������������
select name, email from students

--7. ������� id, ���, email � ���� �������� �������������
select id, name, email, created_on from students

--8. ������� ������������� ��� password 12333
select name, password from students where password = '12333'

--9. ������� ������������� ������� ���� ������� 2021-03-26 000000
select name, created_on from students where created_on = '2021-03-26 000000'

--10. ������� ������������� ��� � ����� ���� ����� ����
select name from students where name like '%����%'

--11. ������� ������������� ��� � ����� � ����� ���� 8
select name from students where name like '%8'

--12. ������� ������������� ��� � ����� � ���� ����� �
select name from students where name like '%a'

--13. ������� ������������� ������� ���� ������� 2021-07-12 000000
select name, created_on from students where created_on = '2021-07-12 000000'

--14. ������� ������������� ������� ���� ������� 2021-07-12 000000 � ����� ������ 1m313
select name, password, created_on from students where created_on = '2021-07-12 000000' and password = '1m313' 

--15. ������� ������������� ������� ���� ������� 2021-07-12 000000 � � ������� � ����� ���� ����� Andrey
select name, created_on from students where created_on = '2021-07-12 000000' and name like '%Andrey%'

--16. ������� ������������� ������� ���� ������� 2021-07-12 000000 � � ������� � ����� ���� ����� 8
select name, created_on from students where created_on = '2021-07-12 000000' and name like '%8%'

--17. ������� ������������ � ������� id ����� 10
select id, name from students where id = 10

--18. ������� ������������ � ������� id ����� 53
select id, name from students where id = 53

--19. ������� ������������ � ������� id ������ 40
select id, name from students where id > 40

--20. ������� ������������ � ������� id ������ 30
select id, name from students where id < 30

--21. ������� ������������ � ������� id ������ 27 ��� ������ 88
select id, name from students where id < 27 or id > 88

--22. ������� ������������ � ������� id ������ ���� ����� 37
select id, name from students where id <= 37

--23. ������� ������������ � ������� id ������ ���� ����� 37
select id, name from students where id >= 37

--24. ������� ������������ � ������� id ������ 80 �� ������ 90
select id, name from students where id > 80 and id < 90

--25. ������� ������������ � ������� id ����� 80 � 90
select id, name from students where id between 80 and 90

--26. ������� ������������� ��� password ����� 12333, 1m313, 123313
select name, password from students where password in ('12333', '1m313', '123313')

--27. ������� ������������� ��� created_on ����� 2020-10-03 000000, 2021-05-19 000000, 2021-03-26 000000
select name, created_on from students where created_on in ('2020-10-03 000000', '2021-05-19 000000', '2021-03-26 000000')

--28. ������� ����������� id
select min(id) from students

--29. ������� ������������ id
select max(id) from students

--30. ������� ���������� �������������
select count(id) from students

--31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� ������������.
select id, name, created_on from students order by created_on asc 

--32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� ������������.
select id, name, created_on from students order by created_on desc