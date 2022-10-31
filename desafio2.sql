SELECT COUNT(DISTINCT son.song_id) AS cancoes,
COUNT(DISTINCT art.artist_id) AS artistas,
COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.songs AS son
INNER JOIN SpotifyClone.artists AS art ON son.artist_id = art.artist_id
INNER JOIN SpotifyClone.albums AS alb ON son.album_id = alb.album_id;