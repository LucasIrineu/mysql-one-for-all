SELECT artist.artist_name AS artista,
albums.album_name AS album
FROM SpotifyClone.artists AS artist
INNER JOIN SpotifyClone.albums AS albums ON artist.artist_id = albums.artist_id
WHERE artist.artist_name LIKE 'Elis%'
GROUP BY artista, album
ORDER BY artista, album;
