SELECT 
    u.nom_usuario || ' ' || u.apell_usuario AS vendedor,
    SUM(v.total_venta) AS total_vendido
FROM ventas v
JOIN usuario u ON v.id_usuario = u.id_usuario
GROUP BY vendedor
HAVING SUM(v.total_venta) > 100000;
