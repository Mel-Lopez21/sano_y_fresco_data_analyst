SELECT *
FROM tickets
LIMIT 100;

SELECT SUM(precio_total) AS ingreso_total
FROM tickets;

SELECT strftime('%Y-%m', fecha) AS mes, SUM(precio_total) AS ingreso_mensual
FROM tickets
GROUP BY mes
ORDER BY mes;

SELECT id_departamento, SUM(precio_total) AS ventas_departamento
FROM tickets
GROUP BY id_departamento
ORDER BY ventas_departamento DESC;

SELECT id_seccion, SUM(precio_total) AS ventas_seccion
FROM tickets
GROUP BY id_seccion
ORDER BY ventas_seccion DESC;

SELECT nombre_producto, SUM(cantidad) AS total_vendido
FROM tickets
GROUP BY nombre_producto
ORDER BY total_vendido DESC
LIMIT 10;

SELECT nombre_producto, SUM(precio_total) AS ingreso_producto
FROM tickets
GROUP BY nombre_producto
ORDER BY ingreso_producto DESC
LIMIT 10;

SELECT id_cliente, SUM(precio_total) AS ingreso_cliente
FROM tickets
GROUP BY id_cliente
ORDER BY ingreso_cliente DESC
LIMIT 20;

SELECT AVG(compra_total_cliente) AS compra_media_por_cliente 
	FROM ( 
	SELECT id_cliente, SUM(precio_total) AS compra_total_cliente 
	FROM tickets 
	GROUP BY id_cliente ) subconsulta;

SELECT COUNT(DISTINCT id_pedido) AS total_pedidos
	FROM tickets;

SELECT AVG(total_pedido) AS valor_promedio_pedido
	FROM (
	SELECT id_pedido, SUM(precio_total) AS total_pedido
	FROM tickets
	GROUP BY id_pedido
	) subconsulta;
