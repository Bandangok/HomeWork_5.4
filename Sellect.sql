select name_track, time_track
from songs
where time_track = (select max(time_track) from songs);

select name_track, time_track     /* Исправил*/
from songs
where time_track >= 210;

select name_collection
from collection 
where date_relise between '2018-01-01' and '2020-12-31';

select nickname 
from singers 
where nickname not like '% %';

select name_track   /* Исправил*/
from songs
where string_to_array(lower(name_track),' ') && array['my']; 

select genres.name, count(genres_singers.singers_id)
from genres
join genres_singers on genres.g_id = genres_singers.genres_id 
group by genres.name;

select count(so_id) as Количество_треков  /* Исправил*/
from songs 
join albums on songs.album_id  = albums.a_id
where albums.date_relise between '2019-01-01' and '2020-12-31';

select albums.name_album, avg(songs.time_track) as Среднее_время
from albums
join songs on albums.a_id = songs.album_id
group by albums.name_album
order by Среднее_время ;

select collection.name_collection, singers.nickname 
from collection 
join songs_collection on collection.c_id = songs_collection.collection_id 
join songs on songs_collection.songs_id = songs.so_id 
join albums on songs.album_id = albums.a_id 
join singers_albums on albums.a_id = singers_albums.album_id 
join singers on singers_albums.singer_id = singers.si_id 
where singers.nickname  like 'Eminem'
group by singers.nickname, collection.name_collection ;

select nickname   /* Исправил*/
from singers
where nickname not in(select singers.nickname
	from singers
	join singers_albums on singers.si_id = singers_albums.singer_id 
	join albums on singers_albums.album_id = albums.a_id 
	where albums.date_relise between '2020-01-01' and '2020-12-31');
	
