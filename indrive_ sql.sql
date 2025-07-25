
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';
-- 1. Create the database
CREATE DATABASE IF NOT EXISTS Booking;
USE Booking;

-- 2. Create the table with your exact columns
CREATE TABLE booking_data (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(50),
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(50),
    Vehicle_Type VARCHAR(50),
    Pickup_Location VARCHAR(100),
    Drop_Location VARCHAR(100),
    V_TAT VARCHAR(50),
    C_TAT VARCHAR(50),
    Canceled_Rides_by_Customer INT,
    Canceled_Rides_by_Driver INT,
    Incomplete_Rides  VARCHAR(50),
    Incomplete_Rides_Reason VARCHAR(100),
    Booking_Value DECIMAL(10,2),
    Payment_Method VARCHAR(50),
    Ride_Distance FLOAT,
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT
);

-- 3. Load data from the CSV file
LOAD DATA LOCAL INFILE 'C:/Users/hp/Downloads/Bookings_ola.csv'
INTO TABLE booking_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 4. Check if data was loaded

SELECT * FROM booking_data;


-- QUESTION 1--
CREATE  VIEW Successful_ride AS
SELECT * FROM booking_data
WHERE Booking_Status = 'success';

SELECT * FROM Successful_ride;
-- Question2 --
create view Average_distance_covered_by_each_type_of_vehical AS
select Vehicle_Type ,avg( Ride_Distance) from booking_data
group by Vehicle_Type ;


select * from Average_distance_covered_by_each_type_of_vehical;

-- Question 3---
create view RideCancelBYCustomer As
select count(*) from booking_data
where booking_status ="Canceled by Customer";
Select * from RideCancelBYCustomer;

-- Question 4----

 Select  Customer_ID , count(*)  AS totalbookings from booking_data
 group by Customer_ID
 order by totalbookings  desc limit 5;


 
 -- Question 4---
 create view Top5customer As
SELECT Customer_ID, COUNT(Booking_ID) AS total_bookings
FROM booking_data
WHERE Customer_ID LIKE 'CID%'
GROUP BY Customer_ID
ORDER BY total_bookings DESC
LIMIT 5;

select * from Top5customer;


--- Question 5 ---
create view Ridecancel as
select count(Canceled_Rides_by_Driver ) from  booking_data 
where Canceled_Rides_by_Driver =' Personal & Car related issue';

select * from Ridecancel;

--- Question 6 ---
create view MAX_MIN_RATING as
SELECT Vehicle_Type, MAX(Driver_Ratings), MIN(Driver_Ratings)
FROM booking_data
WHERE Vehicle_Type = 'Auto'
GROUP BY Vehicle_Type;

select * from MAX_MIN_RATING;

--- Question 7 ----
select * from booking_data
where     Payment_Method ="UPI";


--- Question 8 ---
select Vehicle_Type ,avg(Customer_Rating) from booking_data
group by Vehicle_Type ;

SELECT  count(*) Total_ride ,SUM(Booking_Value) AS total_revenue
FROM booking_data
WHERE Booking_Status = 'Success';

--- Question 10 ---

select Booking_ID as ID , Incomplete_Rides_Reason as Reason
from booking_data
where Incomplete_Rides  = 'Yes'
 AND Incomplete_Rides_Reason IS NOT NULL;





 













