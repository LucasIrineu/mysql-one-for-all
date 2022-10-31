SELECT DISTINCT users.name AS usuario,
COUNT(history.user_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(songs.duration)/60, 2) AS total_minutos
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history ON users.user_id = history.user_id
INNER JOIN SpotifyClone.songs AS songs ON history.song_id = songs.song_id
GROUP BY users.name
ORDER BY users.name;