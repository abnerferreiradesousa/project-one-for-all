SELECT 
	M.title AS nome,
    COUNT(M.musica_id) AS reproducoes
FROM SpotifyClone.usuarios AS U
JOIN SpotifyClone.historico AS H
ON U.usuario_id = H.usuario_id
JOIN SpotifyClone.musicas AS M
ON H.musica_id = M.musica_id
WHERE plano_id IN (1, 3)
GROUP BY nome
ORDER BY nome;