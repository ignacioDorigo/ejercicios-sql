-- Primero Agrupo los Escritos por ISBN  y autor
SELECT isbn as libro, COUNT(isbn) as cantidadEscritores
FROM AutorLibro
GROUP BY isbn

-- Busco el Maximo valor de esos cantidadEscritores
SELECT max(cantidadEscritores) as valorMaximo
FROM (SELECT isbn as libro, COUNT(isbn) as cantidadEscritores FROM AutorLibro GROUP BY isbn) as agrupada


-- Uso un Count de la consulta principal con un WHERE
SELECT COUNT(*) as librosConMasDeUnAutor
FROM (SELECT isbn as libro, COUNT(isbn) as cantidadEscritores FROM AutorLibro GROUP BY isbn) as agrupada
WHERE cantidadEscritores = (SELECT max(cantidadEscritores) as valorMaximo
							FROM (SELECT isbn as libro, COUNT(isbn) as cantidadEscritores FROM AutorLibro GROUP BY isbn) as agrupada)