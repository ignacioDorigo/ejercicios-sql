-- Ejercicio 17 --

SELECT nombreColor,  COUNT(nombreColor) as cantidadPersonasRojoFavorito
FROM Persona
INNER JOIN ColorFavorito ON Persona.idColorFavorito = ColorFavorito.idColor
GROUP BY nombreColor
HAVING nombreColor = 'Rojo'