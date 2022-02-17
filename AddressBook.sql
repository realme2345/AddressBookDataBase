/* Create address book data base */
create database AddressBook
/* Create Table address book */
create table Address_Book(
Id int IDENTITY(1,1) PRIMARY KEY,
FirstName varchar(200),
LastName varchar(200),
Email varchar(200),
Phnum bigint,
Address varchar(200),
State varchar(200),
Zip bigint
);
/* Inserting the data into the Table */
INSERT INTO Address_Book(FirstName,LastName,Email,Phnum,Address,State,Zip)values('Rasi','naasdf','rasipendeela@gmail.com',98374523454,'VJW','Andhra',2474573);
SELECT * FROM Address_Book
SELECT* FROM Address_Book where FirstName='Nari';

/* UC-4 Edit the addressbook of existing contact based on their names */
UPDATE Address_Book SET FirstName = 'Nagi'WHERE FirstName = 'Nari';

/* UC-5 Ability to delete the person */
delete from Address_Book where FirstName='Nagi';

/*UC-6 Ability to retrive the data based on thier city */
SELECT* FROM Address_Book where State='Telangana';
SELECT* FROM Address_Book where State='VJW';

/* UC-7 Ability to find Size based on their state*/
SELECT COUNT(*) FROM Address_Book where State='Telangana';

/* UC-8 Ability to Soretd the AB based on thier State */
SELECT FirstName FROM Address_Book ORDER BY State;

/* UC-9 Add the name and type of person */
Alter table Address_Book add Addname varchar(200) not null default 'Name', Type varchar(200);
select * from Address_Book
update Address_Book set Addname='Rasi' where Id in(5);
select * from Address_Book where Addname='Raja' or Type='TE';

/*UC-10 Ability to get number of contact persons i.e. count by type */
SELECT COUNT(*) FROM Address_Book where Type='SE';
select * from Address_Book where Addname='Raja' or Type='TE';

 /*UC-11 Ability to add person to both Friend and Family */
 Alter table Address_Book add Friend varchar(200) not null default 'Name',Family varchar(200);
 update Address_Book set Friend='hari' where Id in(1,4);
 update Address_Book set Family='Raju' where Id in (4,3);
