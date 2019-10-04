{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 HelveticaNeue-Bold;\f2\fnil\fcharset0 HelveticaNeue;
}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat4\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat7\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid101\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid2}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh17500\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs36 \cf0 ### 
\f1\b Get the count  of vehicles service per brand in each month .\
\
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0

\f2\b0 \cf0 select v.Brand_Name as Brand ,count(v.Vehicle_Id) as VehicleCount, month(sv.ServcingDate) as mnth \
from Vehicle as v \
join ServicingVisits as sv \
on v.Vehicle_Id=sv.Vehicle_Id  \
group by mnth,Brand;\
\pard\pardeftab560\slleading20\partightenfactor0

\f1\b \cf0 \
###  How many bike serviced by the worker per month\
\pard\pardeftab560\slleading20\partightenfactor0

\f2\b0 \cf0 \
Select Staff_Id, count(*),month(ServcingDate) as mnth \
from ServicingVisits\
group by mnth,Staff_Id;\
\
###  
\f1\b Get the worker name who serviced the maximum bike\

\f2\b0 select sv.Staff_Id,s.StaffName,count(sv.Vehicle_Id) as count_of_services \
from Staff s join ServicingVisits sv\
On s.Staff_Id = sv.Staff_Id\
group by Staff_Id \
order by count_of_services Desc \
limit 1;\
\
\pard\pardeftab560\pardirnatural\partightenfactor0
\ls1\ilvl0\cf0 ###  
\f1\b Get the count of customer visit in year and the total cost he/she paid\
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0

\f2\b0 \cf0 select Customer_Id,sum(Total_Cost),year(ServcingDate) as year_of_service \
from ServicingVisits \
group by Customer_Id,year_of_service;\
\
\
###  
\f1\b Which procedure mostly used by the customer in last 3 months\
\pard\pardeftab560\slleading20\partightenfactor0

\f2\b0 \cf0 select p.Procedure_name, count(p.procedure_id) as cnt from ServicingVisits sv\
join procedure_done pd on sv.visit_id = pd.visit_id\
join procedures p on pd.procedure_id = p.procedure_id                                                                                                                   	\
where sv.ServcingDate >= now()-interval 3 month\
Group by p.procedure_id, p.Procedure_name\
Order by cnt desc\
Limit 1; \
\
\pard\pardeftab560\slleading20\partightenfactor0

\f1\b \cf0 ### Summary reports of all the servicing visit for last month (Customer name, Licence No, Total Cost and Procedure Used)\
\pard\pardeftab560\slleading20\partightenfactor0

\f2\b0 \cf0 \
Select c.Name as CustomerName, v.lincence_plate_number as Licence_Number, sv.Total_Cost as Cost, pd.procedure_name\
as Procedure_Name\
from ServicingVisits sv\
Join  customer c on sv.customer_id=c.customer_id\
Join vehicle v on sv.vehicle_id=v.vehicle_id\
Join procedure_done p on sv.visit_id=p.visit_id\
Join procedures pd on p.procedure_id=pd.procedure_id;\
\
\
\pard\pardeftab560\pardirnatural\partightenfactor0
\ls2\ilvl0\cf0 ### 
\f1\b Get the count of most service done by each worker in month
\f2\b0 \
\pard\pardeftab560\slleading20\partightenfactor0
\cf0 \
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0
\cf0 Select * from (\
select s.staffname, p.procedure_name, count(p.procedure_id) as cnt ,RANK() OVER (PARTITION BY s.staff_id order by count(p.procedure_id) desc) rnk\
from staff s\
Join ServicingVisits sv on s.staff_id=sv.staff_id\
Join procedure_done pd on sv.visit_id= pd.visit_id\
Join procedures p on pd.procedure_id=p.procedure_id\
where sv.ServcingDate >= now()-interval 1 month\
Group by s.staff_id,p.procedure_id,s.staffname, p.procedure_name) as rs\
where rs.rnk = 1;\
\
\
\pard\pardeftab560\slleading20\partightenfactor0
\cf0 \
\
\
\
}