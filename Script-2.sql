create table if not exists Genre(
id serial primary key,
Name varchar(40) not null
);
create table if not exists Singer(
id serial primary key,
Name varchar(40) not null
);
create table if not exists GenreSinger(
genre_id integer references Genre(id),
singer_id integer references Singer(id)
);
create table if not exists Album(
id serial primary key,
Name varchar(60) not null,
Release_year integer
);
create table if not exists AlbumSinger(
singer_id integer references Singer(id),
album_id integer references Album(id),
constraint pk primary key (singer_id, album_id) 
);
create table if not exists Tracks(
id serial unique,
album_id integer references Album(id),
Name varchar(40) not null,
Duration numeric(2,2)
);
create table if not exists Collection(
id serial primary key,
Name varchar(60) not null,
Release_year integer
);
create table if not exists TrackCollection(
track_id integer references Tracks(id),
collection_id integer references Collection(id)
);
