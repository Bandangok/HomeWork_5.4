insert into genres (g_id, name)
values (1, 'Rock'), 
(2, 'Rap'), 
(3, 'Pop'), 
(4, 'Hip-hop');

insert into singers (si_id, nickname)
values (1, 'Linkin Park'), 
(2, 'Slipknot'),
(3, 'The Beatles'),
(4, 'Eminem'),
(5, 'Kanye West'),
(6, 'Kendrick Lamar'),
(7, 'Lady Gaga'),
(8, 'Billie Eilish'),
(9, 'Rihanna'),
(10, 'Post Malone'),
(11, 'Basta'),
(12, 'Guf');

insert into albums (a_id, name_album, date_relise)
values (1, 'Hybrid Theory', '2000-10-24'),
(2, 'All Hope Is Gone', '2008-08-24'),
(3, 'Rubber Soul', '1965-12-03'),
(4, 'The Marshall Mathers LP', '2000-05-23'),
(5, 'Donda 2P', '2022-02-23'),
(6, 'DAMN', '2017-04-14'),
(7, 'Hollywoods Bleeding', '2019-09-06');

insert into songs (so_id, name_track, time_track, album_id)
values (1, 'My December', 261, 1),
(2, 'Dead Memories', 269, 2),
(3, 'Drive My Car', 147, 3),
(4, 'Stan', 284, 4),
(5, 'Too Easy', 178, 5),
(6, 'HUMBLE', 177, 6),
(7, 'DNA', 186, 6),
(8, 'In The End', 217, 1),
(9, 'Runaway', 184, 1),
(10, 'Points of Authority', 201, 1),
(11, 'Circles', 215, 7),
(12, 'Die for me', 245, 7);

insert into collection(c_id, name_collection, date_relise)
values (1, 'Madness', '2001-11-30' ),
(2, 'Too Late', '1966-05-02' ),
(3, 'Forget', '2010-06-01' ),
(4, 'Marshal LP', '2002-07-07' ),
(5, 'For Men', '2019-08-22');

insert into genres_singers (genres_id, singers_id)
values (1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 11),
(2, 12),
(3, 5),
(3, 6),
(3, 10),
(4, 7),
(4, 8),
(4, 9);

insert into singers_albums(singer_id, album_id)
values (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(10, 7);

insert into songs_collection(collection_id, songs_id)
values (1, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 7);
