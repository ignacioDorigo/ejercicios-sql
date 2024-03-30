-- Ejercicio 9 -- 
SELECT *
FROM AutorLibro

-- Agrupamos los libros por el isbn (y nos quedamos con el que tenga menos)
SELECT isbn, COUNT(isbn) as cantidadEscritores
FROM AutorLibro
GROUP BY isbn

-- Buscamos cual es ese min
SELECT MIN(cantidadEscritores)
FROM (SELECT isbn, COUNT(isbn) as cantidadEscritores
	  FROM AutorLibro
	  GROUP BY isbn) AS agrupada

-- Nos quedamos con las que tengan ese min y Joineamos--
SELECT Libros.nombre, cantidadEscritores
FROM (SELECT isbn, COUNT(isbn) as cantidadEscritores
	  FROM AutorLibro
	  GROUP BY isbn) AS agrupada
INNER JOIN Libros ON agrupada.isbn = Libros.isbn
WHERE cantidadEscritores = (SELECT MIN(cantidadEscritores)
							FROM (SELECT isbn, COUNT(isbn) as cantidadEscritores
								  FROM AutorLibro
								  GROUP BY isbn) AS agrupada)

