--Which stations had the most trips started in 2016?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	start_station_id , 
	citibike_stations.name 
FROM citibike_2016
LEFT JOIN citibike_stations ON citibike_2016.start_station_id = citibike_stations.id
GROUP BY start_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--Which stations had the most trips started in 2017?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	start_station_id , 
	citibike_stations.name 
FROM citibike_2017
LEFT JOIN citibike_stations ON citibike_2017.start_station_id = citibike_stations.id
GROUP BY start_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--Which stations had the most trips started in 2018?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	start_station_id , 
	citibike_stations.name 
FROM citibike_2018
LEFT JOIN citibike_stations ON citibike_2018.start_station_id = citibike_stations.id
GROUP BY start_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--Which stations had the most trips started in 2019?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	start_station_id , 
	citibike_stations.name 
FROM citibike_2019
LEFT JOIN citibike_stations ON citibike_2019.start_station_id = citibike_stations.id
GROUP BY start_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--Which stations had the most trips ended in 2016?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	end_station_id , 
	citibike_stations.name 
FROM citibike_2016
LEFT JOIN citibike_stations ON citibike_2016.end_station_id = citibike_stations.id
GROUP BY end_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--Which stations had the most trips ended in 2017?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	end_station_id , 
	citibike_stations.name 
FROM citibike_2017
LEFT JOIN citibike_stations ON citibike_2017.end_station_id = citibike_stations.id
GROUP BY end_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--Which stations had the most trips ended in 2018?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	end_station_id , 
	citibike_stations.name 
FROM citibike_2018
LEFT JOIN citibike_stations ON citibike_2018.end_station_id = citibike_stations.id
GROUP BY end_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--Which stations had the most trips ended in 2019?
SELECT COUNT (DISTINCT(CONCAT (bike_id , '-' , start_time))) AS trip_count, 
	end_station_id , 
	citibike_stations.name 
FROM citibike_2019
LEFT JOIN citibike_stations ON citibike_2019.end_station_id = citibike_stations.id
GROUP BY end_station_id , citibike_stations.name
ORDER BY trip_count DESC ;

--How many users were subscribers vs customers? (2016)
SELECT COUNT(DISTINCT CONCAT (bike_id , '-' , start_time)) AS trip_count
	, user_type
FROM citibike_2016
WHERE start_station_id = 3186 OR
	end_station_id = 3186
GROUP BY user_type
ORDER BY trip_count DESC; 

--How many users were subscribers vs customers? (2017)
SELECT COUNT(DISTINCT CONCAT (bike_id , '-' , start_time)) AS trip_count
	, user_type
FROM citibike_2017
WHERE start_station_id = 3186 OR
	end_station_id = 3186
GROUP BY user_type
ORDER BY trip_count DESC; 

--How many users were subscribers vs customers? (2018)
SELECT COUNT(DISTINCT CONCAT (bike_id , '-' , start_time)) AS trip_count
	, user_type
FROM citibike_2018
WHERE start_station_id = 3186 OR
	end_station_id = 3186
GROUP BY user_type
ORDER BY trip_count DESC; 

--How many users were subscribers vs customers? (2019)
SELECT COUNT(DISTINCT CONCAT (bike_id , '-' , start_time)) AS trip_count
	, user_type
FROM citibike_2019
WHERE start_station_id = 3186 OR
	end_station_id = 3186
GROUP BY user_type
ORDER BY trip_count DESC; 

-- Number of docks at 3186? (Number = 42)
SELECT * 
FROM citibike_stations
WHERE "id" = 3186 ; 

--Activity per season in 2016? 
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN DATE_TRUNC ('day', start_time) BETWEEN '2016-03-01 00:00:00' AND '2016-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2016-03-01 00:00:00' AND '2016-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2016-06-01 00:00:00' AND '2016-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2016-06-01 00:00:00' AND '2016-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2016-09-01 00:00:00' AND '2016-11-30 00:00:00' THEN 'Fall'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2016-09-01 00:00:00' AND '2016-11-30 00:00:00' THEN 'Fall'
			ELSE 'Winter'
		END AS season
FROM citibike_2016
WHERE start_station_id = 3186 OR 
	end_station_id = 3186
GROUP BY season; 

--Activity per season in 2017? 
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN DATE_TRUNC ('day', start_time) BETWEEN '2017-03-01 00:00:00' AND '2017-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2017-03-01 00:00:00' AND '2017-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2017-06-01 00:00:00' AND '2017-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2017-06-01 00:00:00' AND '2017-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2017-09-01 00:00:00' AND '2017-11-30 00:00:00' THEN 'Fall'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2017-09-01 00:00:00' AND '2017-11-30 00:00:00' THEN 'Fall'
			ELSE 'Winter'
		END AS season
FROM citibike_2017
WHERE start_station_id = 3186 OR 
	end_station_id = 3186
GROUP BY season; 

--Activity per season in 2018? 
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN DATE_TRUNC ('day', start_time) BETWEEN '2018-03-01 00:00:00' AND '2018-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2018-03-01 00:00:00' AND '2018-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2018-06-01 00:00:00' AND '2018-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2018-06-01 00:00:00' AND '2018-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2018-09-01 00:00:00' AND '2018-11-30 00:00:00' THEN 'Fall'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2018-09-01 00:00:00' AND '2018-11-30 00:00:00' THEN 'Fall'
			ELSE 'Winter'
		END AS season
FROM citibike_2018
WHERE start_station_id = 3186 OR 
	end_station_id = 3186
GROUP BY season; 

--Activity per season in 2019? 
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN DATE_TRUNC ('day', start_time) BETWEEN '2019-03-01 00:00:00' AND '2019-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2019-03-01 00:00:00' AND '2019-05-31 00:00:00' THEN 'Spring'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2019-06-01 00:00:00' AND '2019-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2019-06-01 00:00:00' AND '2019-08-31 00:00:00' THEN 'Summer'
			WHEN DATE_TRUNC ('day', start_time) BETWEEN '2019-09-01 00:00:00' AND '2019-11-30 00:00:00' THEN 'Fall'
			WHEN DATE_TRUNC ('day', stop_time) BETWEEN '2019-09-01 00:00:00' AND '2019-11-30 00:00:00' THEN 'Fall'
			ELSE 'Winter'
		END AS season
FROM citibike_2019
WHERE start_station_id = 3186 OR 
	end_station_id = 3186
GROUP BY season; 

-- Activity by weekday in 2016
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN EXTRACT(dow from start_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from stop_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from start_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from stop_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from start_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from stop_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from start_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from stop_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from start_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from stop_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from start_time) = 5 THEN 'Friday'
			WHEN EXTRACT(dow from stop_time) = 5 THEN 'Friday'
			ELSE 'Saturday'
			END AS day_of_week
FROM citibike_2016
WHERE start_station_id = 3186 
GROUP BY day_of_week;

-- Activity by weekday in 2017
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN EXTRACT(dow from start_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from stop_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from start_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from stop_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from start_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from stop_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from start_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from stop_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from start_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from stop_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from start_time) = 5 THEN 'Friday'
			WHEN EXTRACT(dow from stop_time) = 5 THEN 'Friday'
			ELSE 'Saturday'
			END AS day_of_week
FROM citibike_2017
WHERE start_station_id = 3186 
GROUP BY day_of_week;

-- Activity by weekday in 2018
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN EXTRACT(dow from start_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from stop_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from start_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from stop_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from start_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from stop_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from start_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from stop_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from start_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from stop_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from start_time) = 5 THEN 'Friday'
			WHEN EXTRACT(dow from stop_time) = 5 THEN 'Friday'
			ELSE 'Saturday'
			END AS day_of_week
FROM citibike_2018
WHERE start_station_id = 3186 
GROUP BY day_of_week;

-- Activity by weekday in 2019
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time)) as bike_count
	, CASE WHEN EXTRACT(dow from start_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from stop_time) = 0 THEN 'Sunday'
			WHEN EXTRACT(dow from start_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from stop_time) = 1 THEN 'Monday'
			WHEN EXTRACT(dow from start_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from stop_time) = 2 THEN 'Tuesday'
			WHEN EXTRACT(dow from start_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from stop_time) = 3 THEN 'Wednesday'
			WHEN EXTRACT(dow from start_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from stop_time) = 4 THEN 'Thursday'
			WHEN EXTRACT(dow from start_time) = 5 THEN 'Friday'
			WHEN EXTRACT(dow from stop_time) = 5 THEN 'Friday'
			ELSE 'Saturday'
			END AS day_of_week
FROM citibike_2019
WHERE start_station_id = 3186 
GROUP BY day_of_week;

--What times do users remove bikes from 3186? (2019)
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time))AS trip_count
	, DATE_PART('hour' , start_time) AS start_hour 
FROM citibike_2019
WHERE start_station_id = 3186
GROUP BY start_hour
ORDER BY start_hour ASC;

--What time do users return bikes to 3186? (2019)
SELECT COUNT (DISTINCT CONCAT (bike_id , '-' , start_time))AS trip_count
	, DATE_PART('hour' , stop_time) AS end_hour 
FROM citibike_2019
WHERE end_station_id = 3186
GROUP BY end_hour
ORDER BY end_hour ASC;


