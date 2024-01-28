

# Question 3
select * from green_taxi_data 
where EXTRACT(DAY from lpep_pickup_datetime) = 18 and EXTRACT(DAY from lpep_dropoff_datetime) = 18;

# Question 4
select * from green_taxi_data order by trip_distance desc;

# Question 5
SELECT "Borough", SUM(green_taxi_data.fare_amount)
FROM green_taxi_data
JOIN taxi_zone_lookup
ON "PULocationID" = "LocationID"
WHERE EXTRACT(DAY from green_taxi_data.lpep_pickup_datetime) = 18
GROUP BY "Borough"
order by 2 DESC;

# Question 6
SELECT "green_taxi_data"."tip_amount", "green_taxi_data"."DOLocationID", *
FROM green_taxi_data
JOIN taxi_zone_lookup
ON "PULocationID" = "LocationID"
WHERE "Zone" = 'Astoria'
order by 1 DESC
LIMIT 1;

select * from taxi_zone_lookup where "LocationID" = '132';