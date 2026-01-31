			-- VIEWS
		-- SALES INFO
create or replace view Sales_Info as
select learn.Learner_ID, learn.Full_Name, learn.Country,
	    cour.Course_Name, cour.Category,
        pur.Purchase_Date,
		pur.Quantity, cour.Unit_Price,
        cour.Unit_Price*pur.Quantity as Total_Amount
from purchases as pur
join learners as learn
on pur.Learner_ID= learn.Learner_ID
join courses as cour
on pur.Course_ID= cour.Course_ID;

	
		-- TOTAL SUMMARY 
create or replace view Consolidated_Tables as
select count(learn.learner_ID) Tot_Stud_Enrolled, 
	count(cour.Course_ID) as Tot_Course, 
    count(distinct learn.country) as Tot_Country ,
    count(distinct pur.Learner_ID) as Purchased_Learners, 
	(select count(learn.Learner_ID)
		from learners as learn
		left join purchases pur
		on learn.Learner_ID = pur.Learner_ID
		where pur.Learner_ID is null) as UnPurchased_Learner,
	sum(Quantity) as Tot_Purchase,
	count(distinct pur.Course_ID) as Purchased_Course,
    (select count(cour.Course_ID) 
        from courses as cour
        left join purchases as pur
        on cour.Course_ID = pur.Course_ID
        where pur.Course_ID is null) as UnPurchased_Course,
	sum(pur.Quantity*cour.Unit_Price) as Total_Revenue
from purchases as pur
right join courses as cour
on pur.Course_ID= cour.Course_ID
join learners as learn
on pur.Learner_ID= learn.Learner_ID;

		-- LEARNERS FROM EACH COUNTRY
create or replace view Learners_Country as        
select Country, count(Learner_ID) as Tot_Learners 
from learners
group by Country
order by Tot_Learners desc;


create or replace view purchase_details as
select cour. Course_ID, cour.Course_Name, cour.Category,
		 pur.Learner_ID, learn.Full_Name,learn.Country,
         pur.Course_ID as Purchased_course, pur.Quantity, cour.Unit_Price,
         pur.Purchase_Date,
        pur.Quantity*cour.Unit_Price as Total_Amount
from courses as cour
left join purchases as pur 
on pur.Course_ID  = cour.Course_ID
left join learners as learn
on pur.Learner_ID=learn.Learner_ID;       

 
     -- UNPURCHASED COURSE
 create or replace view Unpurchased_Course as    
select Course_ID,Course_Name as Un_Purchased_courses
from purchase_details where Purchased_course is null;
select * from Unpurchased_Course;

	-- TOP 5 PURCHASED COURSE
create or replace view Highest_Revenue_Course as   
select Course_ID,Course_Name as Purchased_courses,
	count(Quantity) as Quantity,
	sum(Quantity*Unit_Price) as Total_Revenue
from purchase_details where Purchased_course is NOT null
group by Course_ID,Course_Name
order by Total_Revenue desc
limit 5;

create or replace view Top_Purchased_Course as 
select Course_ID,Course_Name as Purchased_courses,
	count(Quantity) as Quantity,
	sum(Quantity*Unit_Price) as Total_Revenue
from purchase_details where Purchased_course is NOT null
group by Course_ID,Course_Name
order by Quantity desc
limit 5;

 select Course_ID, count(Quantity) as Quantity
from purchases 
group by Course_ID
order by Quantity desc
limit 3;

		-- TOP 5 LEARNERS
 create or replace view  Top_Purchased_Learners as       
select pur.Learner_ID, learn.Full_Name,
	    cour.Category,
        sum(pur.Quantity) as Quantity ,
        sum(cour.Unit_Price*pur.Quantity) as Tot_Amnt
from purchases as pur
join learners as learn
on pur.Learner_ID= learn.Learner_ID
join courses as cour
on pur.Course_ID= cour.Course_ID
group by pur.Learner_ID, cour.Category
order by Tot_Amnt desc
limit 5;