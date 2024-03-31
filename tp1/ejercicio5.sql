

--Hacemos un filtrado primero en prestamos que sean != 'E'
SELECT *
FROM Prestamos
WHERE estado != 'E'

-- hacemos un JOIN  con los socio, y filtramos por el estado del socio !='Activo'
SELECT *
FROM Prestamos
INNER JOIN Socios ON Socios.codSocio = Prestamos.socio
WHERE Prestamos.estado != 'E' AND Socios.estado != 'Activo'