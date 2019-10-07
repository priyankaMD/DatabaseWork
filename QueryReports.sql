### Get the count  of vehicles service per brand in each month .

select v.Brand_Name as Brand ,count(v.Vehicle_Id) as VehicleCount, month(sv.ServcingDate) as mnth 
from Vehicle as v 
join ServicingVisits as sv 
on v.Vehicle_Id=sv.Vehicle_Id  
group by mnth,Brand;

###  How many bike serviced by the worker per month

Select Staff_Id, count(*),month(ServcingDate) as mnth 
from ServicingVisits
group by mnth,Staff_Id;

###  Get the worker name who serviced the maximum bike
select sv.Staff_Id,s.StaffName,count(sv.Vehicle_Id) as count_of_services 
from Staff s join ServicingVisits sv
On s.Staff_Id = sv.Staff_Id
group by Staff_Id 
order by count_of_services Desc 
limit 1;

###  Get the count of customer visit in year and the total cost he/she paid
select Customer_Id,sum(Total_Cost),year(ServcingDate) as year_of_service 
from ServicingVisits 
group by Customer_Id,year_of_service;


###  Which procedure mostly used by the customer in last 3 months
select p.Procedure_name, count(p.procedure_id) as cnt from ServicingVisits sv
join procedure_done pd on sv.visit_id = pd.visit_id
join procedures p on pd.procedure_id = p.procedure_id                                                                                                                   	
where sv.ServcingDate >= now()-interval 3 month
Group by p.procedure_id, p.Procedure_name
Order by cnt desc
Limit 1; 

### Summary reports of all the servicing visit for last month (Customer name, Licence No, Total Cost and Procedure Used)

Select c.Name as CustomerName, v.lincence_plate_number as Licence_Number, sv.Total_Cost as Cost, pd.procedure_name
as Procedure_Name
from ServicingVisits sv
Join  customer c on sv.customer_id=c.customer_id
Join vehicle v on sv.vehicle_id=v.vehicle_id
Join procedure_done p on sv.visit_id=p.visit_id
Join procedures pd on p.procedure_id=pd.procedure_id;


### Get the count of most service done by each worker in month

Select * from (
select s.staffname, p.procedure_name, count(p.procedure_id) as cnt ,RANK() OVER (PARTITION BY s.staff_id order by count(p.procedure_id) desc) rnk
from staff s
Join ServicingVisits sv on s.staff_id=sv.staff_id
Join procedure_done pd on sv.visit_id= pd.visit_id
Join procedures p on pd.procedure_id=p.procedure_id
where sv.ServcingDate >= now()-interval 1 month
Group by s.staff_id,p.procedure_id,s.staffname, p.procedure_name) as rs
where rs.rnk = 1;







