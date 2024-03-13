CREATE table if not exists genres (
g_id serial primary key, 
name varchar(60) unique);

create table if not exists singers (
si_id serial primary key,
nickname varchar(40) not null);

create table if not exists albums(
a_id serial primary key,
name_album varchar(60) not null,
date_relise date check(date_relise > '1700-01-01'));

create table if not exists songs(
so_id serial primary key,
name_track varchar(50) not null,
time_track integer not null,
album_id integer not null references albums(a_id));

create table if not exists collection (
c_id serial primary key,
name_collection varchar(50) not null,
date_relise date check(date_relise > '1700-01-01'));

create table if not exists genres_singers (
id serial primary key,
genres_id integer not null references genres(g_id),
singers_id integer not null references singers(si_id));

create table if not exists singers_albums (
id serial primary key,
singer_id integer not null references singers(si_id),
album_id integer not null references albums(a_id));

create table if not exists songs_collection (
id serial primary key,
collection_id integer not null references collection(c_id),
songs_id integer not null references songs(so_id));









