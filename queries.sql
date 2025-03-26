SELECT * FROM zomato.zomato;
#1.Average Delivery Time per City
select City,avg(`Time_taken (min)`) from zomato.zomato group by City;
#2.Impact of Traffic Density on Delivery Time
select Road_traffic_density,avg(`Time_taken (min)`) as average_time,count(*) as total_delivery from zomato.zomato
group by Road_traffic_density
order by average_time desc;
#3.How Weather Conditions Affect Delivery Time
select Weather_conditions,avg(`Time_taken (min)`)as average_time,count(*) as total_order
 from zomato.zomato
group by Weather_conditions
order by average_time desc;
#4.Average Ratings of Delivery Persons by City
select City,avg(Delivery_person_Ratings) from zomato.zomato group by City;
#5. Top 5 Delivery Agents with the Fastest Deliveries
select Delivery_person_ID,avg(`Time_taken (min)`) as delivery_time from zomato.zomato
group by Delivery_person_ID 
order by delivery_time asc limit 5;
#6.Orders During Festival vs. Non-Festival Days
select Festival,count(*) as total_order,avg(`Time_taken (min)`) as average_time from zomato.zomato
group by Festival;
#7. How Multiple Deliveries Affect Delivery Time
select multiple_deliveries,avg(`Time_taken (min)`) from zomato.zomato
group by multiple_deliveries;
#8.Average Delivery Time by Vehicle Type
select Type_of_vehicle,avg(`Time_taken (min)`) from zomato.zomato group by Type_of_vehicle;
#9.Peak Order Hours
select hour(Time_Orderd),count(*)  as total_order from zomato.zomato group by Time_Orderd
order by total_order desc ;
#10.City-wise Distribution of Traffic Density
select City,Road_traffic_density,count(*)  as total_order from zomato.zomato
group by City,Road_traffic_density
order by  City,total_order desc;