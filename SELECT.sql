with AA as (select MAX(duration) MAX_D from tracks)
select name_track, duration from tracks A 
join AA on A.duration = AA.MAX_D;
 
select name_track, duration from tracks A 
where A.duration = (select MAX(duration) MAX_D from tracks );

select name_track, MAX(duration) from tracks
GROUP BY name_track
limit 1;

select name_track From tracks
where 210 <= duration;

select name_collection from collections
where 2018 <= year_of_release and year_of_release <= 2021; 

select name_executor from executor
where name_executor not like '% %';

select name_executor from executor 
where name_executor like '% my %' or name_executor like '% мой %' or name_executor like '%My %' or name_executor like '%Мой %' or name_executor like '% мой%';

SELECT title, COUNT(executor_id) g_e FROM genres f
JOIN genre_executor a ON f.genre_id = a.genre_id
GROUP BY f.title;

select COUNT(track_id) from tracks
where 2019 <= year_of_release and year_of_release <= 2021;

SELECT name_album, AVG(duration) t_d FROM albums f
JOIN tracks a ON f.album_id = a.album_id
GROUP BY f.name_album;

SELECT name_executor FROM executor f
JOIN albums a ON a.year_of_release = 2020
JOIN album_executor b ON a.album_id = b.album_id and f.executor_id != b.executor_id
GROUP BY f.name_executor;

select name_collection from collections f
JOIN album_executor a ON a.executor_id = 1
JOIN tracks b on b.album_id = a.album_id
join track_collection c on b.track_id  = c.track_id and f.collection_id = c.collection_id 
GROUP BY f.name_collection;