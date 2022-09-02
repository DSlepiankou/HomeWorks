/*
��������������� ������� ���� HomeTask ���������� ����������� ���������/��������� �
�������������� ��������� ��������
*/

alter table Tickets
add constraint UQ_Tickets_TicketNumber unique (TicketNumber)
go

alter table TicketFlies
add constraint FK_TicketFlies_Tickets foreign key (TicketNumber) references Tickets(TicketNumber)
go

alter table TicketFlies
add constraint FK_TicketFlies_Tickets foreign key (Amount) references Tickets(TotalAmount)
go

alter table Aircrafts
add constraint UQ_Aircrafts_Aitcraftcode unique (Aircraftcode)
go

alter table Flights with nocheck
add constraint FK_Flights_Aircrafts foreign key (AircraftCode) references Aircrafts(AircraftCode)
go

/*
������� 1
�������� ��������� ���������������� ����������� �� �������� ������ ��� ��������� ���������
������������ ��������.
*/

alter table Tickets 
add constraint CK_Flights_TicketNumber check (TicketNumber like 
'[A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
go

/*
������� 2
��������������� ������� � �������� ��������� �������� � ���, �������� ����������� ��
������������ �������� ��� ��������� ������� ����� ������.
*/

use HomeTask
alter table Aircrafts 
add constraint PK_Aircrafts_AircraftCode primary key (AircraftCode)

alter table Airports 
add constraint PK_Airports_AirportCode primary key (AirportCode)

alter table Airports 
add constraint UQ_Airports_AirportName unique (AirportName)