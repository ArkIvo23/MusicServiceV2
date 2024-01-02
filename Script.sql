create table if not exists Genres(
  id SERIAL primary key,
  name varchar(50) not null
);

create table if not exists Artists(
  id SERIAL primary key,
  name varchar(50) not null
);

create table if not exists Albums(
  id integer primary key,
  name varchar(50) not null,
  year integer not null
);

create table if not exists Tracks(
  id integer primary key,
  name varchar(50) not null,
  duration integer not null
);

create table if not exists Collections(
  id integer primary key,
  name varchar(50) not null,
  year integer not null
);

create table if not exists Genres_Artists(
  id integer primary key,
  genre_id integer,
  artist_id integer,
  foreign key (genre_id) references Genres(id),
  foreign key (artist_id) references Artists(id)
);

create table if not exists collections_tracks(
  id integer primary key,
  collection_id integer not null,
  track_id integer not null,
  foreign key (collection_id) references Collections(id),
  foreign key (track_id) references Tracks(id)
);

create table if not exists Artists_Albums(
  id integer primary key,
  artist_id integer,
  album_id integer,
  foreign key (artist_id) references Artists(id),
  foreign key (album_id) references Albums(id)
);