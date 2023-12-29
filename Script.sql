create table if not exists Genre1(
  id SERIAL primary key,
  name text not null
);

create table if not exists Genre2(
  id SERIAL primary key,
  name text not null
);

create table if not exists Genre3(
  id SERIAL primary key,
  name text not null
);

create table if not exists Artist1(
  id SERIAL primary key,
  name text not null,
  genre_id integer references Genre1(id), Genre2(id)  
);

create table if not exists Artist2(
  id SERIAL primary key,
  name text not null,
  genre_id integer references Genre2(id), Genre3(id)  
);
  

create table if not exists Artist3(
  id SERIAL primary key,
  name text not null,
  constraint pk primary key (genre3_id)
);  

create table if not exists Album1(
  id integer primary key,
  name text not null,
  year integer not null,
  constraint pk primary key (artist1_id, artist2_id)
);

create table if not exists Album2(
  id integer primary key,
  name text not null,
  year integer not null,
  constraint pk primary key (artist1_id, artist3_id)
);

create table if not exists Album3(
  id integer primary key,
  name text not null,
  year integer not null,
  constraint pk primary key (artist3_id)
);

create table if not exists Track1(
  id integer primary key,
  name text not null,
  duration integer not null,
  constraint pk primary key (album1_id)
);

create table if not exists Track2(
  id integer primary key,
  name text not null,
  duration integer not null,
  constraint pk primary key (album2_id)
);

create table if not exists Track3(
  id integer primary key,
  name text not null,
  duration integer not null,
  track_id integer references (album3_id)
);

create table if not exists collection(
  id integer primary key,
  name text not null,
  year integer not null,
  constraint pk primary key (track1_id, track2_id, track3_id)
);