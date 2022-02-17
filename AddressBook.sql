/* Create address book data base */
create database AddressBook
/* Create Table address book */
create table PersonDetails(
FirstName varchar(200) PRIMARY KEY,
LastName varchar(200),
PersonEmail varchar(200),
);

/*Create table for ph numbers */
create table Phonenumber(
MobileNum bigint,
Alternatenum bigint,
FirstName varchar(200),
);
Alter table Phonenumber
add constraint FK_PersonPhone foreign key(FirstName) references PersonDetails(FirstName);

/* Create table for the Person Address */
create table AddressPerson(
Id int IDENTITY(1,1) PRIMARY KEY,
HouseNo varchar(200),
Street varchar(200),
City varchar(200) not null,
State varchar(200) not null,
ZipCode bigint not null
);
select * from AddressPerson
Alter table AddressPerson
add constraint FK_PersonAddress foreign key(FirstName) references PersonDetails(FirstName);

/* Inserted the data into the Table */
INSERT INTO PersonDetails(FirstName,LastName,PersonEmail)values('Raja','Kongara','rajakonhgd@gmail.com'),('nagi','Guuggilla','nagirdhdue@gmail.com'),('nari','elahah','naridjshdgd@gmail.com');
select * from PersonDetails
INSERT INTO  Phonenumber(FirstName,MobileNum,Alternatenum)values('Raja',9883737364,9383877463),('nagi',9292983732,929837349),('nari',9298847643,9736537262);
select * from Phonenumber
INSERT INTO AddressPerson(HouseNo,Street,City,State,ZipCode,FirstName)values('1-433-98','ramnaga','HYD','Telangana',500018,'Nagi'),
('12-34-344','derksjs','VJW','Andhra',506832,'Nari');

select * from AddressPerson where City='HYD' and State='Telangana';

SELECT COUNT(*) FROM AddressPerson where City='HYD' and State='Telangana';

select FirstName From AddressPerson ORDER by City;