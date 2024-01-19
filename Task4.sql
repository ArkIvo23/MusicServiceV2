SELECT name
FROM albums
WHERE genre IN (SELECT genre FROM artists GROUP BY genre HAVING COUNT(DISTINCT genre) > 1);

SELECT name
FROM tracks
WHERE album_id NOT IN (SELECT album_id FROM albums);

SELECT name
FROM tracks
ORDER BY duration ASC
LIMIT 1;

SELECT name
FROM albums
ORDER BY num_tracks ASC
LIMIT 1;
