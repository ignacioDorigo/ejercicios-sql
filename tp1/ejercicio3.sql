
-- Vamos a tener que joinear prestamos con AutorLibro y despues con autores
SELECT *
FROM Prestamos
INNER JOIN AutorLibro ON AutorLibro.isbn = Prestamos.isbn
INNER JOIN Autores ON Autores.codAut = AutorLibro.codigo

-- Filtramos por el pais
SELECT *
FROM Prestamos
INNER JOIN AutorLibro ON AutorLibro.isbn = Prestamos.isbn
INNER JOIN Autores ON Autores.codAut = AutorLibro.codigo
WHERE Autores.pais = 'Espaņa'

-- Hacemos un Count de eso
SELECT COUNT(*) AS prestamosDeLibrosEspaņoles
FROM Prestamos
INNER JOIN AutorLibro ON AutorLibro.isbn = Prestamos.isbn
INNER JOIN Autores ON Autores.codAut = AutorLibro.codigo
WHERE Autores.pais = 'Espaņa'
