
-- Primero solo agarramos los de 2014
SELECT * FROM Prestamos
WHERE YEAR(fecha) = 2014

-- Ahora joineamos y  usamos group by
SELECT AutorLibro.codigo, COUNT(AutorLibro.codigo) as prestamosCadaAutor2014
FROM (SELECT * FROM Prestamos
	  WHERE YEAR(fecha) = 2014) AS solo2014
INNER JOIN AutorLibro ON solo2014.isbn = AutorLibro.isbn
GROUP BY AutorLibro.codigo
ORDER BY prestamosCadaAutor2014 desc