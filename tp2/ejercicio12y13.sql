-- Ejercicio 12 y 13 --
-- Primero Tenemos que buscar cual es el id del color 'Verde'
-- Segundo tenemos que saber cual es el ID de la 'Pizza'

/*Paso 1*/
/*
SELECT idColor
FROM ColorFavorito
WHERE nombreColor = 'Verde'

SELECT idComidaFavorita
FROM ComidaFavorita
WHERE nombreComidaFavorita = 'Pizza'
*/

-- PASO 2: Crear el Registro
INSERT INTO Persona(idPersona,nombrePersona,idComidaFavorita,idColorFavorito,apellido)
VALUES(9,
	'Pedro',
	(SELECT idComidaFavorita FROM ComidaFavorita WHERE nombreComidaFavorita = 'Pizza'),
	(SELECT idColor FROM ColorFavorito WHERE nombreColor = 'Verde'),
	'Leon');