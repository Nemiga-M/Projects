 --  DATA EXPLORATION USING JOINS
 /* Format currency values to 2 decimal places.
	Use aliases for column names (e.g., AS total_revenue).
*/
/* Combine learner, course, and purchase data. */
select cour.Course_ID, cour.Course_Name,cour.Category,
	learn.Full_Name, learn.Country,
    pur.Quantity, cour.Unit_Price, 
    pur.Quantity* cour.Unit_Price as Total_Revenue
    from purchases as pur
join courses as cour 
on pur.Course_ID=cour.Course_ID
join learners as learn
on pur.Learner_ID = learn.Learner_ID;

/* Sort results appropriately (e.g., highest total_spent first).*/

select cour.Course_Name,cour.Category,
	pur.Quantity, cour.Unit_Price, 
    pur.Quantity* cour.Unit_Price as Total_Revenue
from purchases as pur
join courses as cour 
on pur.Course_ID=cour.Course_ID
order by Total_Revenue desc;

/* Display each learner’s purchase details 
(course name, category, quantity, total amount, and purchase date).*/

select learn.Learner_ID, learn.Full_Name, cour.Course_Name, cour.Category,
		pur.Quantity,cour.Unit_Price, cour.Unit_Price*pur.Quantity as Total_Amount,
        pur.Purchase_Date
from purchases as pur
join learners as learn
on pur.Learner_ID = learn.Learner_ID
join courses as cour
on pur.Course_ID= cour.Course_ID;

	-- 3. Analytical Queries
/* Q1. Display each learner’s total spending (quantity × unit_price) along with their country.
*/

select learn.Learner_ID as Learner_ID, learn.Full_Name as Learner_Name, 
		learn.Country, 
		sum(cour.Unit_Price*pur.Quantity) as Total_Amount
from purchases as pur
Left join learners as learn
on pur.Learner_ID = learn.Learner_ID
join courses as cour
on pur.Course_ID= cour.Course_ID
group by Learner_ID;


/*Q2. Find the top 3 most purchased courses based on total quantity sold.*/

select Course_ID, count(Quantity) as Quantity
from purchases 
group by Course_ID
order by Course_ID, Quantity desc
limit 3;


/*Q3. Show each course category’s total revenue and 
			the number of unique learners who purchased from that category.*/
            
select cour.Category, count(distinct pur.Learner_ID) as Num_Unique_Learners,
	sum(cour.Unit_Price*pur.Quantity) as Total_Revenue
from purchases as pur
join courses as cour
on pur.Course_ID= cour.Course_ID
join learners as learn
on pur.Learner_ID = learn.Learner_ID
group by cour.Category;


/*Q4. List all learners who have purchased courses from more than one category.*/
    
select pur.Learner_ID,learn.Full_Name, 
		count(cour.Category) as Category
from purchases as pur
join learners as learn
on pur.Learner_ID= learn.Learner_ID
join courses as cour
on pur.Course_ID= cour.Course_ID
group by  pur.Learner_ID,learn.Full_Name
having Category>1;


/*Q5. Identify courses that have not been purchased at all.*/

select cour.Course_ID, cour.Course_Name, cour.Category, 
	coalesce(sum(pur.Quantity),0) as Tot_Qty
from purchases as pur
right join courses as cour
on pur.Course_ID= cour.Course_ID
group by cour.Course_ID
having Tot_Qty <1;