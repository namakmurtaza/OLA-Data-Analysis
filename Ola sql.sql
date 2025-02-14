Create database Ola;
use Ola;

select * from bookings;

select * from bookings
where Booking_Status="Success";

select Avg(Ride_Distance),Vehicle_Type from Bookings
group by Vehicle_Type;

select Canceled_Rides_by_Customer,count(*) from Bookings
group by Canceled_Rides_by_Customer;

select count(*) from Bookings
where Booking_Status="Canceled by Customer";

#TOP 5 CUSTOMER WHO BOOKED THE HIGHEST NO OF RIDES
select Customer_ID,Count(Booking_ID) as Highest_Rides from Bookings
group by Customer_ID
ORDER BY Highest_Rides desc
LIMIT 5;

select Count(*) from Bookings
where Canceled_Rides_by_Driver="Personal & Car related issue";

select max(Driver_Ratings),min(Driver_Ratings) from Bookings
where Vehicle_Type="Prime Sedan";

select * from Bookings
where Payment_Method="UPI";

select Vehicle_Type,ROUND(AVG(Customer_Rating), 2) from Bookings
group by Vehicle_Type;

SELECT CONCAT(ROUND(SUM(Booking_Value) / 1000000, 2), ' millions') AS Booking_Value
FROM Bookings
WHERE Booking_Status = 'Success';

SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings 
WHERE Incomplete_Rides ='Yes';
