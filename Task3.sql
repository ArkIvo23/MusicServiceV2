SELECT Genre, COUNT(*) as Count
FROM Performers
GROUP BY Genre

SELECT COUNT(*) as Count
FROM Tracks
WHERE AlbumReleaseYear IN (2019, 2020)

SELECT Album, AVG(TrackDuration) as AverageDuration
FROM Tracks
GROUP BY Album

SELECT *
FROM Performers
WHERE NOT EXISTS (
  SELECT 1
  FROM Albums
  WHERE Albums.PerformerID = Performers.ID AND AlbumReleaseYear = 2020
)

SELECT *
FROM Compilations
WHERE EXISTS (
  SELECT 1
  FROM Tracks
  WHERE Tracks.CompilationID = Compilations.ID AND Tracks.PerformerID = <конкретный_исполнитель>
)

