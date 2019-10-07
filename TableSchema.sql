
### Create Database
create database automobile_service_center;

###  Show Database
show databases;

### Use Database
use automobile_service_centre;

### Vehicle Table Creation
create table Vehicle(
Vehicle_Id int not null primary key AUTO_INCREMENT,
Engine_Number int not null,
Brand_Name varchar(30) not null,
Color varchar(30) not null,
model_name varchar(20),
lincence_plate_number varchar(20)
);



### Customer Table Creation
Create table Customer
(
 Customer_Id int not null primary key AUTO_INCREMENT,
 Name Varchar(40) not null,
 Identification_No int not null,
 Address varchar(50)
);





### Staff Table Creation

CREATE TABLE staff (
  Staff_Id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  StaffName varchar(30) NOT NULL,
  Joining_Date date,
  Staff_address varchar(30) NOT NULL,
  Salary int(11),  
);





### procedures Table Creation

create table procedures
( 
 Procedure_Id int not null primary key AUTO_INCREMENT,
 Procedure_name varchar(50) not null,
 cost int not null
);




### ServicingVisits Table Creation

Create table ServicingVisits
( 
Visit_Id int not null primary key AUTO_INCREMENT,
ServcingDate date not null,
Total_Cost int not null,
Customer_Id int,
Vehicle_Id int,
Staff_Id int,
FOREIGN KEY (Customer_Id) REFERENCES customer(Customer_Id),                                                                    FOREIGN KEY (Vehicle_Id) REFERENCES Vehicle(Vehicle_Id),                                                                        FOREIGN KEY (Staff_Id) REFERENCES Staff(Staff_Id)
);  




### procedure_done Table Creation

create table procedure_done
(
Visit_Id int,
Procedure_Id int,
FOREIGN KEY (Visit_Id) REFERENCES ServicingVisits(Visit_Id),                                                       
FOREIGN KEY (Procedure_Id) REFERENCES procedures(Procedure_Id)
);














  




