{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh17500\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs36 \cf0 \
### Create Database\
create database automobile_service_center;\
\
###  Show Database\
show databases;\
\
### Use Database\
use automobile_service_centre;\
\
### Vehicle Table Creation\
create table Vehicle(\
Vehicle_Id int not null primary key AUTO_INCREMENT,\
Engine_Number int not null,\
Brand_Name varchar(30) not null,\
Color varchar(30) not null,\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f1 \cf2 \CocoaLigature0 model_name varchar(20),\
lincence_plate_number varchar(20)
\f0 \cf0 \CocoaLigature1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 );\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f1 \cf2 \CocoaLigature0 \
\
### Customer
\f0 \cf0 \CocoaLigature1  Table Creation
\f1 \cf2 \CocoaLigature0 \
Create table Customer\
(\
 Customer_Id int not null primary key AUTO_INCREMENT,\
 Name Varchar(40) not null,\
 Identification_No int not null,\
 Address varchar(50)\
);\
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\
\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
### Staff
\f0 \cf0 \CocoaLigature1  Table Creation\

\f1 \cf2 \CocoaLigature0 \
CREATE TABLE staff (\
  Staff_Id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,\
  StaffName varchar(30) NOT NULL,\
  Joining_Date date,\
  Staff_address varchar(30) NOT NULL,\
  Salary int(11),  \
);\
\
\
\
\
\
### procedures 
\f0 \cf0 \CocoaLigature1 Table Creation
\f1 \cf2 \CocoaLigature0 \
\
create table procedures\
( \
 Procedure_Id int not null primary key AUTO_INCREMENT,\
 Procedure_name varchar(50) not null,\
 cost int not null\
);\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\
\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
### ServicingVisits 
\f0 \cf0 \CocoaLigature1 Table Creation\

\f1 \cf2 \CocoaLigature0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
Create table ServicingVisits\
( \
Visit_Id int not null primary key AUTO_INCREMENT,\
ServcingDate date not null,\
Total_Cost int not null,\
Customer_Id int,\
Vehicle_Id int,\
Staff_Id int,\
FOREIGN KEY (Customer_Id) REFERENCES customer(Customer_Id),                                                                    FOREIGN KEY (Vehicle_Id) REFERENCES Vehicle(Vehicle_Id),                                                                        FOREIGN KEY (Staff_Id) REFERENCES Staff(Staff_Id)\
);  \
\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\
\
### procedure_done 
\f0 \cf0 \CocoaLigature1 Table Creation
\f1 \cf2 \CocoaLigature0 \
\
create table procedure_done\
(\
Visit_Id int,\
Procedure_Id int,\
FOREIGN KEY (Visit_Id) REFERENCES ServicingVisits(Visit_Id),                                                       \
FOREIGN KEY (Procedure_Id) REFERENCES procedures(Procedure_Id)\
);\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\
\
\
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\
\
\
\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\fs22   
\f0\fs36 \cf0 \CocoaLigature1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\
\
}