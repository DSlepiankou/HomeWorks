/*
������������� � ���� HomeTask, ��� ������ ���������� ������� � ��������� ������, ����������
���������� ������ � ������ ����.
*/

select count(*) from sys.tables

/*
������� 1
�������� ������� �������� ��������� ������ ��������� � ������� �������� ��� ���������� ��������
���������.
*/

select avg (DistanceRange) from Aircrafts
select avg(distinct DistanceRange) from Aircrafts

/*
������� 2
�������� ���������� ������ � �� ������� ���������
*/

alter table Tickets
add TotalSum int

update Tickets
set TotalSum = 4567
where TotalAmount = 4
update Tickets
set TotalSum = 780
where TotalAmount = 1
update Tickets
set TotalSum = 1890
where TotalAmount = 2
update Tickets
set TotalSum = 2741
where TotalAmount = 5

select count (BookDate) from Tickets

select sum(TotalSum) / sum (TotalAmount)
from Tickets