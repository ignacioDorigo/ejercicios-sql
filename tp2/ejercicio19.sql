-- Ejercicio 19 --
SELECT Persona.nombrePersona, ComidaFavorita.nombreComidaFavorita
FROM Persona
INNER JOIN ComidaFavorita ON ComidaFavorita.idComidaFavorita = Persona.idComidaFavorita
WHERE Persona.idComidaFavorita IS NOT NULL