SELECT DISTINCT U.usuario AS usuario, (
CASE
	WHEN MAX(YEAR(H.data_reproducao)) = 2021 THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
    END
) AS condicao_usuario
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON H.usuario_id = U.usuario_id
GROUP BY U.usuario
ORDER BY U.usuario;