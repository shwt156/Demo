create database flight_reservation_db1 

use flight_reservation_db1

create table List_Hotel(
Id int NOT NULL AUTO_INCREMENT ,
Hotel_Name varchar(20), 
Rating varchar(10), 
City varchar(20),
Rooms_Total varchar(5),
Rooms_Available varchar(5),
primary key(Id)
)

create table user_Registration(
Id int NOT NULL AUTO_INCREMENT ,
user_name varchar(20), 
Passwords varchar(256),
Re_Enter_Password varchar(256),
primary key(Id)
)

create table customer(
Id int NOT NULL AUTO_INCREMENT ,
First_Name varchar(20), 
Last_Name varchar(20), 
Email varchar(30),
PhoneNumber varchar(256),
primary key(Id),
Unique key(Email)

show tables;


select * from customer


select * from list_hotel

insert into user_registration values(10,"shwt", "test","test")
select * from user_registration