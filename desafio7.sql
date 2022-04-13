SELECT
	AR.artist AS artista,
    AL.title AS album,
    COUNT(FO.artist_id) AS seguidores
FROM SpotifyClone.album AS AL
INNER JOIN SpotifyClone.artista AS AR
ON AL.artist_id = AR.artist_id
INNER JOIN SpotifyClone.follows AS FO
ON FO.artist_id = AR.artist_id
GROUP BY AL.album_id;