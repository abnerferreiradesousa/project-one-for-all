SELECT
	COUNT(DISTINCT MU.musica_id) AS cancoes,
	COUNT(DISTINCT AR.artist_id) AS artistas,
  COUNT(DISTINCT AL.title) AS albuns
FROM SpotifyClone.musicas AS MU
INNER JOIN SpotifyClone.artista AS AR
ON MU.artist_id = AR.artist_id
INNER JOIN SpotifyClone.album AS AL
ON AL.artist_id = AR.artist_id;