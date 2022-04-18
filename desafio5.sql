SELECT 
  M.title AS cancao,
  COUNT(M.musica_id) AS reproducoes
FROM SpotifyClone.historico AS H
INNER JOIN SpotifyClone.musicas AS M
ON H.musica_id = M.musica_id
GROUP BY H.musica_id
ORDER BY reproducoes DESC, M.title
LIMIT 2;