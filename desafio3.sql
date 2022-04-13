SELECT
	U.usuario AS `usuario`,
    COUNT(H.usuario_id) AS qtde_musicas_ouvidas,
    SUM(M.duracao_segundos) AS total_minutos
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.musicas AS M
ON H.musica_id = M.musica_id
GROUP BY H.usuario_id;