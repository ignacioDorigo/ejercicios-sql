-- Ejercicio 15 --
-- No puedo eliminar el color debido a la restriccion de que hay alguien en la tabla Persona que tiene ese color
-- Es por la integridad referencial, primero debo eliminar la restriccion o el registro
DELETE 
FROM ColorFavorito
WHERE nombreColor = 'Rosa'