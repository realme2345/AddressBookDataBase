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
