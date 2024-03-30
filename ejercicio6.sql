-- Hacemos un INNER JOIN entre Prestamos, AutorLibro y Autores, y filtramos por los meses
SELECT *
FROM Prestamos
INNER JOIN AutorLibro ON Prestamos.isbn = AutorLibro.isbn
INNER JOIN Autores ON Autores.codAut = AutorLibro.codigo
WHERE MONTH(prestamos.fecha) = 3 OR MONTH(prestamos.fecha) = 6

-- Nos quedamos solo con el nombre de los autores, ponemos distinct para que no aparezcan repetidos
SELECT DISTINCT nombre
FROM Prestamos
INNER JOIN AutorLibro ON Prestamos.isbn = AutorLibro.isbn
INNER JOIN Autores ON Autores.codAut = AutorLibro.codigo
WHERE MONTH(prestamos.fecha) = 3 OR MONTH(prestamos.fecha) = 6