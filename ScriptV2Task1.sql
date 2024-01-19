CREATE TABLE Genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE Artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE Albums (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  year INTEGER NOT NULL
);

CREATE TABLE Tracks (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  duration INTEGER NOT NULL,
  album_id INTEGER NOT NULL,
  FOREIGN KEY (album_id) REFERENCES Albums(id)
);

CREATE TABLE Collections (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  year VARCHAR(9999) NOT NULL
);

CREATE TABLE Genres_Artists (
  id INTEGER PRIMARY KEY,
  genre_id INTEGER,
  artist_id INTEGER,
  FOREIGN KEY (genre_id) REFERENCES Genres(id),
  FOREIGN KEY (artist_id) REFERENCES Artists(id)
);

CREATE TABLE collections_tracks (
  id INTEGER PRIMARY KEY,
  collection_id INTEGER NOT NULL,
  track_id INTEGER NOT NULL,
  FOREIGN KEY (collection_id) REFERENCES Collections(id),
  FOREIGN KEY (track_id) REFERENCES Tracks(id)
);

CREATE TABLE Artists_Albums (
  id INTEGER PRIMARY KEY,
  artist_id INTEGER NOT NULL,
  album_id INTEGER NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artists(id),
  FOREIGN KEY (album_id) REFERENCES Albums(id)
);

INSERT INTO Genres (name) VALUES
  ('Rock'),
  ('Pop'),
  ('Jazz'),
  ('Classic');

INSERT INTO Artists (name) VALUES
  ('The Beatles'),
  ('Elvis Presley'),
  ('Michael Jackson'),
  ('Queen');

INSERT INTO Albums (name, year) VALUES
  ('Sgt. Pepper\'s Lonely Hearts Club Band', 1967),
  ('Thriller', 1982),
  ('Back in Black', 1980),
  ('The Dark Side of the Moon', 1973);

INSERT INTO Tracks (name, duration, album_id) VALUES
  ('Hey Jude', 84, 1),
  ('Bohemian Rhapsody', 240, 2),
  ('Sweet Child O\' Mine', 400, 3),
  ('The Great Gig in the Sky', 400, 4);

INSERT INTO Collections (name, year) VALUES
  ('My Favorite Songs', 2010),
  ('Best of Rock', 2005),
  ('Jazz Classics', 1995);

INSERT INTO Genres_Artists (genre_id, artist_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 4);

INSERT INTO collections_tracks (collection_id, track_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 4);

INSERT INTO Artists_Albums (artist_id, album_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 4);
