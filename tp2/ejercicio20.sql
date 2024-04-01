-- Ejercicio 20 --
SELECT Persona.nombrePersona,Persona.apellido,ComidaFavorita.nombreComidaFavorita,ColorFavorito.nombreColor
FROM Persona
INNER JOIN ColorFavorito ON Persona.idColorFavorito = ColorFavorito.idColor
INNER JOIN ComidaFavorita ON Persona.idComidaFavorita = ComidaFavorita.idComidaFavorita