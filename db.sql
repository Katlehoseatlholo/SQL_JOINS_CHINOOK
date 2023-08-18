select playlists.Name, count(*) from playlists
join playlist_track on playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.Name
ORDER BY song_count DESC
Limit 1;

SELECT playlists.Name, count(*) from playlists
join playlist_track on playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.Name
ORDER BY count(*) ASC
LIMIT 1;

-- Find all the artists for a given Genre
SELECT artists.Name AS ArtistName, genres.Name AS Genre
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
JOIN genres ON tracks.GenreId = genres.GenreId
WHERE genres.Name = 'Jazz';
-- Find the Playlist with the most songs:
SELECT playlists.Name AS PlaylistName, COUNT(playlist_track.TrackId) AS NumberOfSongs
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.PlaylistId
ORDER BY NumberOfSongs DESC
-- LIMIT 1;
-- Find the Playlist with the least songs:
SELECT playlists.Name AS PlaylistName, COUNT(playlist_track.TrackId) AS NumberOfSongs
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.PlaylistId
ORDER BY NumberOfSongs ASC
-- LIMIT 1;
-- Find the total for a given invoice:
SELECT * FROM invoices
SELECT InvoiceId, Total
FROM invoices
WHERE InvoiceId = 11;
-- Find all the playlists containing a given genre
SELECT playlists.Name AS PlaylistName
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
JOIN genres ON tracks.GenreId = genres.GenreId
WHERE genres.Name = 'Rock';
-- Find the biggest invoice amount:
SELECT MAX(Total) AS MaxInvoiceAmount
FROM invoices;
-- Find the smallest invoice amount:
SELECT MIN(Total) AS MinInvoiceAmount
FROM invoices;
-- Find the artist with the most songs:
SELECT artists.Name AS ArtistName, COUNT(tracks.TrackId) AS NumberOfSongs
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY artists.ArtistId
ORDER BY NumberOfSongs DESC
-- LIMIT 1;
-- Find the artist with the least songs:
SELECT artists.Name AS ArtistName, COUNT(tracks.TrackId) AS NumberOfSongs
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY artists.ArtistId
ORDER BY NumberOfSongs ASC
LIMIT 1;
----------------------------------------------------------------
-- Find Total for a given invoice 

SELECT * from invoices where invoices.InvoiceId=17

--  Find Biggest/Smallest for a given invoice
SELECT InvoiceId, Min(Total) from invoices
SELECT InvoiceId, Max(Total) from invoices

----------------------------------------------------------------
-- find artist with the  10 most/least songs

SELECT artists.Name,  count(*) as TrackCount
from artists
JOIN albums on albums.ArtistId = artists.ArtistId
JOIN tracks on tracks.AlbumId = albums.AlbumId
GROUP by artists.Name
order by TrackCount desc
LIMIT 10

SELECT artists.Name,  count(*) as TrackCount
from artists
JOIN albums on albums.ArtistId = artists.ArtistId
JOIN tracks on tracks.AlbumId = albums.AlbumId
GROUP by artists.Name
order by TrackCount 
LIMIT 10


----------------------------------------------------------------
--Find all the artists for a given Genre:
SELECT artists.Name
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
JOIN genres ON tracks.GenreId = Genres.GenreId
WHERE genres.Name = 'Rock';
----------------------------------------------------------------
-- Find the Playlist with the most songs: --------------------------------
SELECT PlaylistId, COUNT(TrackId) AS SongCount
FROM playlist_track
GROUP BY PlaylistId
ORDER BY SongCount DESC
LIMIT 1;
----------------------------------------------------------------
------------Find the total for a given invoice:----------------------------------------------------
SELECT InvoiceId, SUM(Total) AS TotalAmount
FROM invoices
WHERE InvoiceId = 10;

----------------------------------------------------------------
----------------------------------------------------------------







