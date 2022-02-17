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
