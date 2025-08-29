-- mysql labs - Ex. 03

USE airtravel;

-- 1. query all flights on a specific day
SELECT * FROM Flight WHERE departureDate = '1961-05-20';

-- 2. query all flights between two specific cities on a specific day
SELECT f.id, f.departureDate, f.departureTime, d.city, a.city
FROM Flight f
JOIN Airport d ON f.departureID = d.id
JOIN Airport a ON f.arrivalID = a.id
WHERE d.city = 'Los Angeles' AND a.city = 'Rome' AND f.departureDate = '1961-05-20';

-- 3. query all passengers on a specific flight between two specific cities today


