SELECT *
FROM AutorLibro

-- Agrupamos por autor
SELECT codigo, COUNT(codigo) AS cantidadEscritosAutor
FROM AutorLibro
GROUP BY codigo

-- Hacemos un INNER JOIN con Autores y filtramos con un WHERE en la columna cantidad escritos
SELECT nombre
FROM Autores
INNER JOIN (SELECT codigo, COUNT(codigo) AS cantidadEscritosAutor FROM AutorLibro GROUP BY codigo) as agrupada
ON agrupada.codigo = Autores.codAut
WHERE agrupada.cantidadEscritosAutor = 1