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
INSERT INTO Address_Book(FirstName,LastName,Email,Phnum,Address,State,Zip)values('Nari','Guggilla','guggillanarendar@gmail.com',9837782464,'VJW','Andhra',247473);
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


