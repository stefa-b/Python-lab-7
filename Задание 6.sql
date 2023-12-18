CREATE TABLE cities (
city_name TEXT,
latitude REAL,
longitude REAL
);
INSERT INTO cities (city_name, latitude, longitude)
VALUES
('Самара', 53.195873, 50.100193),
('Ульяновск', 54.308067, 48.374867),
('Пенза', 53.200066, 45.004944),
('Саранск', 54.180760, 45.186226);
SELECT city_name
FROM cities
WHERE city_name != 'Самара'
ORDER BY ABS(latitude - (SELECT latitude FROM cities WHERE city_name = 'Самара')) + ABS(longitude - (SELECT longitude FROM cities WHERE city_name = 'Самара'))
LIMIT 3;
