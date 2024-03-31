
-- Vamos a tener que hacer un inner join con los socios
SELECT * 
FROM Prestamos
INNER JOIN Socios ON Prestamos.socio = Socios.codSocio

-- Agrupamos por socio
SELECT codSocio, COUNT(codSocio) as cantidadPrestamos
FROM Prestamos
INNER JOIN Socios ON Prestamos.socio = Socios.codSocio
GROUP BY codSocio

-- Buscamos el maximo de cantidad de prestamos
SELECT MAX(cantidadPrestamos) maximaCantidadPrestamos
FROM (SELECT codSocio, COUNT(codSocio) as cantidadPrestamos
	FROM Prestamos
	INNER JOIN Socios ON Prestamos.socio = Socios.codSocio
	GROUP BY codSocio) as agrupada

-- Buscamos quien/quienes tiene ese maximo de prestamos
SELECT *
FROM (SELECT codSocio, COUNT(codSocio) as cantidadPrestamos
	FROM Prestamos
	INNER JOIN Socios ON Prestamos.socio = Socios.codSocio
	GROUP BY codSocio) AS agrupada
WHERE cantidadPrestamos = (SELECT MAX(cantidadPrestamos) maximaCantidadPrestamos
							FROM (SELECT codSocio, COUNT(codSocio) as cantidadPrestamos
							FROM Prestamos
							INNER JOIN Socios ON Prestamos.socio = Socios.codSocio
							GROUP BY codSocio) as agrupada)