

### Insertion of data in Vehicle
insert into Vehicle (Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(501,"Maruti","Black”,”Baleno”,”MH12”);
insert into Vehicle (Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(409,"Honda","Grey”,”Amaze”,”MH14”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(400,"Honda","Red”,”Civic”,”MH12”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(490,”TATA”,”White”,”Nexon”,”MH13”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(491,”Ferarri”,”Blue”,”XZ”,”MH12”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(498,”Jaguar”,”Blue”,”XJ”,”MH12”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(4611,”Mercedez”,”White”,”Benz SL”,”MH13”);   
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(1612,”Mercedez”,”Black”,”Benz SLC”,”MH13”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(1613,”Mercedez”,”Red”,”Benz SLK”,”MH12”); 
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(4616,”TATA”,”Red”,”Hexa”,”MH12”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(1610,”TATA”,”Blue”,”Nexon”,”MH14”);  
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(4615,”TATA”,”White”,”Tigor”,”MH14”); 
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(4618,”TATA”,”White”,”Tigor”,”MH12”);  
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(46123,”TATA”,”White”,”Nexon”,”MH12”); 
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(41821,”Jaguar”,”White”,”XJ”,”MH12”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(46763,”Jaguar”,”Blue”,”XF”,”MH12”);
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(462345,”Jaguar”,”Blue”,”XE”,”MH12”);  
insert into Vehicle(Engine_Number,Brand_Name,Color,model_name,lincence_plate_number) values(491098,”Ferarri”,”White”,”HZ”,”MH13”);              


### Insertion of data in Customer
insert into Customer(Name,Identification_No,Address) values("Priyanka D",10009,"SB Road,Pune");
insert into Customer(Name,Identification_No,Address) values("Manoj D",10010,"Paud Road,Pune");
insert into Customer(Name,Identification_No,Address) values("Swapnil I",10011,"Andheri, Mumbai");
insert into Customer(Name,Identification_No,Address) values("Swati R”,10190,"Kalyan,Mumbai");
insert into Customer(Name,Identification_No,Address) values("Krishna W",10690,"Suryanagar,Nagpur");
insert into Customer(Name,Identification_No,Address) values("Tushar T",10690,"LaxmiNagar,Nagpur");
insert into Customer(Name,Identification_No,Address) values("Prayuja T",10790,"MG Road,Kolhapur");
insert into Customer(Name,Identification_No,Address) values(“Harshita S“,10790,"FC Road,Pune");
insert into Customer(Name,Identification_No,Address) values("Poornima G", 12345,"Baner,Pune");
insert into Customer(Name,Identification_No,Address) values("Shrikanth A",10000,"Baner,Pune");

### Insertion of data in Staff

insert into Staff(StaffName,Joining_Date,Staff_address)values("Anand Sharma","2011-10-11","Pune");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Rahul Shinde","2001-09-02","Mumbai");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Rina Joshi","2013-08-10","Pune");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Riya Joe","2012-11-18","Pune");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Amey Doshi","2010-01-01","Mumbai");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Devid Dhawan","2011-09-06","Nagpur");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Pramod Jadhav","2015-09-16","Solapur");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Priya Yadav","2015-10-10","kolhapur");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Yash Yadav","2015-12-12","kolhapur");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Uma Suryawanshi","2019-09-09","Satara");
insert into Staff(StaffName,Joining_Date,Staff_address)values("Laila","2012-09-19","Satara");




### Insertion of data in procedures
insert into procedures(Procedure_name,cost) values("Cleaning",500);
insert into procedures(Procedure_name,cost) values("CheckUp",800);
insert into procedures(Procedure_name,cost) values("Servicing",1500);
insert into procedures(Procedure_name,cost) values("Washing",1200);
insert into procedures(Procedure_name,cost) values("Oil Change",1000);
insert into procedures(Procedure_name,cost) values("Any Part Repairing",1300);

### Insertion of data in ServicingVisits

insert into ServicingVisits(ServcingDate,Total_Cost,Customer_Id,Vehicle_Id,Staff_Id) values ("2010-12-12",500,1,1,5);
insert into ServicingVisits(ServcingDate,Total_Cost,Customer_Id,Vehicle_Id,Staff_Id) values ("2011-02-01",1500,1,1,5);
insert into ServicingVisits(ServcingDate,Total_Cost,Customer_Id,Vehicle_Id,Staff_Id) values ("2012-03-21",1500,2,5,1);
insert into ServicingVisits(ServcingDate,Total_Cost,Customer_Id,Vehicle_Id,Staff_Id) values ("2012-04-22",500,2,5,1);
insert into ServicingVisits(ServcingDate,Total_Cost,Customer_Id,Vehicle_Id,Staff_Id) values ("2012-10-09",800,2,5,11);
insert into ServicingVisits(ServcingDate,Total_Cost,Customer_Id,Vehicle_Id,Staff_Id) values ("2013-10-10",800,3,6,3);
insert into ServicingVisits(ServcingDate,Total_Cost,Customer_Id,Vehicle_Id,Staff_Id) values ("2016-01-12",1300,5,10,9);

### Insertion of data in procedure_done

insert into procedure_done values(1,1);
insert into procedure_done values(2,3);
insert into procedure_done values(3,3);
insert into procedure_done values(4,1);
insert into procedure_done values(5,2);
insert into procedure_done values(6,2);
insert into procedure_done values(7,6);

