-- Ejercicio 14 --
UPDATE Persona
SET idColorFavorito = (SELECT idColor FROM ColorFavorito WHERE nombreColor = 'Rosa')
WHERE nombrePersona = 'Pedro' AND idComidaFavorita = 1 --Tengo que buscar el de la pizza igua lque la otra query