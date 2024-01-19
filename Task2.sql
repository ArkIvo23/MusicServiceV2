SELECT name, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT name
FROM tracks
WHERE duration >= 3.5 * 60;

SELECT name
FROM albums
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artists
WHERE name LIKE '%[^ ]%';

SELECT name
FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%my%';