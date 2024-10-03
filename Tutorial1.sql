-- Create table
CREATE TABLE Weather
(
city character(80) NOT NULL,
temp_low integer,
temp_high integer,
date date NOT NULL,
CONSTRAINT city_date PRIMARY KEY (city, date)
)

-- Insert data
INSERT INTO Weather
VALUES
('Honefoss', 8, 15, '2017-07-17'),
('Honefoss', 8, 19, '2017-07-18'),
('Honefoss', 12, 19, '2017-07-19');

-- See output
SELECT * FROM Weather;


SELECT
	cities.name,
	cities.location,
	weather.temp_low,
	weather.temp_high,
	weather.date
FROM 
	public.weather,
	public.cities
WHERE
cities.name = weather.city; 
-- (Note: no entries for Oslo in the query result
-- because no weather entries are inputted yet)

SELECT * FROM public.cities
ORDER BY name ASC LIMIT 100

INSERT INTO Cities
VALUES
('Honefoss',POINT(60.166667, 10.3)),
('Oslo',POINT(59.95, 10.75));

