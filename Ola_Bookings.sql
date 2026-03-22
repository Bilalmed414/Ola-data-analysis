SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bookings.csv'
INTO TABLE bookings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;







CREATE TABLE Bookings (
`Date` VARCHAR(20),
`Time` VARCHAR(20),
`Booking_ID` VARCHAR(50),
`Booking_Status` VARCHAR(50),
`Customer_ID` VARCHAR(50),
`Vehicle_Type` VARCHAR(50),
`Pickup_Location` VARCHAR(100),
`Drop_Location` VARCHAR(100),
`V_TAT` VARCHAR(20),
`C_TAT` VARCHAR(20),
`Canceled_Rides_by_Customer` VARCHAR(50),
`Canceled_Rides_by_Driver` VARCHAR(100),
`Incomplete_Rides` VARCHAR(50),
`Incomplete_Rides_Reason` VARCHAR(200),
`Booking_Value` INT,
`Payment_Method` VARCHAR(50),
`Ride_Distance` VARCHAR(20),
`Driver_Ratings` VARCHAR(10),
`Customer_Rating` VARCHAR(10),
`Vehicle_Images` VARCHAR(100)
);

#--------------------------------------------------------------------------------------------------------------
use ola;
select count(*) from Bookings;

select * from Bookings;

#1. Retrieve all successful bookings:
create view successful_bookings As
select * from Bookings
where Booking_Status= 'Success';

#view call
select * from successful_bookings;

#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select Vehicle_Type, avg(Ride_Distance) as average_distance
from Bookings
group by Vehicle_Type;

#view call
select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
create view Canceled_rides_by_Customers as
select count(*) from Bookings 
where Booking_Status = 'Canceled by Customer';

#view call
select * from Canceled_rides_by_Customers;

#4. List the top 5 customers who booked the highest number of rides:
create view top_5_customers as
select Customer_ID,count(Booking_ID) as total_rides
from Bookings 
group by Customer_ID
order by total_rides desc
limit 5;

#view call 
select * from top_5_customers;





#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Rides_Canceled_by_Driver as 
select count(*) from bookings
where Booking_Status = 'Canceled by Driver';

#view call
select * from Rides_Canceled_by_Driver;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view  Max_Min_Driver_Rating as
select max(Driver_Ratings) as Max_Driver_Ratings,
min(Driver_Ratings) as Min_Driver_Ratings
from Bookings
where Vehicle_Type ='Prime Sedan';

#view call
select * from Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
create view UPI_Payment as
select * from Bookings 
where Payment_Method ='UPI';

#view call
select * from UPI_Payment; 

#8. Find the average customer rating per vehicle type:
create view avg_cust_rating as
select Vehicle_Type,avg(Customer_Rating) as Avg_Customer_Rating
from bookings
group by Vehicle_Type;

#view call
select * from avg_cust_rating;

#9. Calculate the total booking value of rides completed successfully:
create view total_successful_ride_value as
select sum(Booking_Value) as Total_booking_value 
from bookings
where Booking_Status ='Success';

#view call
select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
create view Incomplete_Rides_Reason as
select Booking_ID,Incomplete_Rides_Reason
from bookings
where Incomplete_Rides ='Yes';

#view call
select * from Incomplete_Rides_Reason;

select * from bookings;


