-- Ejercicio 18 --
SELECT Persona.nombrePersona, ColorFavorito.nombreColor
FROM Persona
INNER JOIN ColorFavorito ON Persona.idColorFavorito = ColorFavorito.idColor
WHERE idColorFavorito IS NOT NULL