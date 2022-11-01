SELECT DISTINCT user.name AS usuario,
CASE
	WHEN YEAR(MAX(history.date_played)) >= '2021' THEN 'Usuário ativo'
    WHEN YEAR(MAX(history.date_played)) < '2021' THEN 'Usuário inativo'
END AS status_usuario
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.history AS history ON user.user_id = history.user_id
GROUP BY usuario
ORDER BY usuario;