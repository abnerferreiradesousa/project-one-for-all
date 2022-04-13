SELECT
	AR.artist AS artista,
    AL.title AS album
FROM SpotifyClone.album AS AL
INNER JOIN SpotifyClone.artista AS AR
ON AL.artist_id = AR.artist_id
LIMIT 2;