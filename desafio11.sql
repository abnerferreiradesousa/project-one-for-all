SELECT 
	title AS nome_musica,
    CASE
		WHEN title LIKE '%Streets' THEN REPLACE(title, 'Streets', 'Code Review')
        WHEN title LIKE '%Her Own' THEN REPLACE(title, 'Her Own', 'Trybe')
        WHEN title LIKE '%Inner Fire' THEN REPLACE(title, 'Inner Fire', 'Project')
        WHEN title LIKE '%Silly' THEN REPLACE(title, 'Silly', 'Nice')
        WHEN title LIKE '%Circus' THEN REPLACE(title, 'Circus', 'Pull Request')
	END AS novo_nome
FROM SpotifyClone.musicas
GROUP BY nome_musica
HAVING nome_musica <> novo_nome
ORDER BY novo_nome, nome_musica;