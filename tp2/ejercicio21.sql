-- Ejercicio 21 --

-- HACER UN FULL JOIN y quedarnos con los NULL de idColorFavorito

SELECT nombreColor
FROM Persona
FULL JOIN ColorFavorito ON Persona.idColorFavorito = ColorFavorito.idColor
WHERE idPersona IS NULL