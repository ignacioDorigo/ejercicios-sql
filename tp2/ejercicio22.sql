-- Ejercicio 22 --
-- HACER UN FULL JOIN y quedarnos con los idPersona NULL

SELECT ComidaFavorita.nombreComidaFavorita AS comidaNoElegida
FROM Persona
FULL JOIN ComidaFavorita ON Persona.idComidaFavorita = ComidaFavorita.idComidaFavorita
WHERE Persona.idPersona IS NULL