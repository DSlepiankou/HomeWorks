/*
Lesson 4
��������� ��������� �� ������� ������� �������� ��������� ����������: ����: �������, ��� ������
����� � 5 ���� �����, ��� ��, ����������� ��� ��� ���� � ���� ������������ ������
*/
declare @myDate datetime = getdate()
print @myDate

select dateadd (month, -3, @myDate)
select dateadd (day, -5, @myDate)

select datepart (month, @myDate)
select year (@myDate)
select day (@myDate)
select datepart(weekday, @myDate)

/*
������� 1
��������� ��������� �� ������� ������� �������� ��������� ����������:
- �������� ������� ���� �������� ������������, ��� ���� ������������ �� ��������� �����.
(������� �� ������)
����������� ��������� ���������.
- �������� ������� �� ������� �������, �������� ��� ������������� �������� ����������
���������� ������������ �� ������ "Undefined"
*/

insert Tickets
(TicketNumber, BookDate,TotalAmount,PassengerId,PassengerName,ContactData)
values
('UA7343289900', '2022-08-18T05:02:16', '1', '3735674331', 'Tatiana Sirko', 'London, UK'),
('PK8766778997', '2022-07-20T05:06:59', '2', '3739494750', 'Paul Blackman', 'Kyiv, Ukraine'),
('UK8766789006', '2022-08-09T05:12:31', '5', '6519494331', 'Agnieszka Mazur', 'Krakow, Poland')

select * from Tickets
where BookDate > dateadd (day, -7, getdate())

select * from Tickets
where datediff(day, BookDate, getdate()) <= 7

alter table Tickets
alter column ContactData varchar(120) null

update Tickets
set ContactData = null
where TotalAmount = 1 or TotalAmount = 2

update Tickets
set ContactData = 'Undefined'
where  ContactData is null
