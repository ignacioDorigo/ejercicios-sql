-- Ejercicio 7 --
-- Vamos a tener que buscar el libro/libros menos prestado(s), aunque sea se tuvo que prestar una vez --

-- Vmoas a tener que joinear Prestamos con Libros y Agruparlos por isbn
SELECT Libros.isbn, COUNT(Prestamos.isbn) as cantPrestamos
FROM Prestamos
INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
GROUP BY Libros.isbn

--  Buscamos el min de eso
SELECT MIN(cantPrestamos) as cantDelMenosPrestado
FROM (SELECT Libros.isbn, COUNT(Prestamos.isbn) as cantPrestamos
		FROM Prestamos
		INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
		GROUP BY Libros.isbn) AS agrupada

-- Juntamos consultas
SELECT *
FROM (SELECT Libros.isbn,COUNT(Prestamos.isbn) as cantPrestamos, nombre as nombreLibro
		FROM Prestamos
		INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
		GROUP BY Libros.isbn,nombre) as agrupada
WHERE cantPrestamos = (SELECT MIN(cantPrestamos) as cantDelMenosPrestado
					FROM (SELECT Libros.isbn, COUNT(Prestamos.isbn) as cantPrestamos
					FROM Prestamos
					INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
					GROUP BY Libros.isbn) AS agrupada)