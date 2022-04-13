SELECT
	ROUND(MIN(P.valor), 2) AS faturamento_minimo,
    MAX(P.valor) AS faturamento_maximo,
    ROUND(AVG(P.valor), 2) AS faturamento_medio,
    ROUND(SUM(P.valor), 2) AS faturamento_total
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.planos AS P
ON U.plano_id = P.plano_id;