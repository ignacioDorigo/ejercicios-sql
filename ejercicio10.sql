USE database_universidad
-- 10. ¿Cuales son los libros con más prestamos que el libro de Fisica Cuantica?

-- Primero tenemos que averiguar cuantos prestamos tiene 'Fisica Cuantica'
-- JOIN entre Prestamos y Libros --
/*
SELECT *
FROM Prestamos
INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
*/
-- Ahora solo tomamos los que tengan como nombre Fisica cuantica
/*
SELECT *
FROM Prestamos
INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
WHERE Libros.nombre = 'Fisica Cuantica'
*/
-- Hacemos un COUNT De eso
/*
SELECT COUNT(*) as cantPrestamosFisCuan
FROM Prestamos
INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
WHERE Libros.nombre = 'Fisica Cuantica'
*/

-- Ahora JOINEAMOS LAS TABLAS Libros y Prestamos, las agrupamos por libro y un count y 
SELECT Libros.nombre, COUNT(Libros.nombre) as cantid
FROM Prestamos
INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
GROUP BY Libros.nombre


-- filtramos con la cantidad de prestamos de fisica cuantica --
SELECT *
FROM (SELECT Libros.nombre, COUNT(Libros.nombre) as cantid
	  FROM Prestamos
	  INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
	  GROUP BY Libros.nombre) AS agrupada
WHERE cantid > (SELECT COUNT(*) as cantPrestamosFisCuan
FROM Prestamos
INNER JOIN Libros ON Prestamos.isbn = Libros.isbn
WHERE Libros.nombre = 'Fisica Cuantica')

