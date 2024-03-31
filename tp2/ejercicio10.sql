USE personas;
-- 10 Primero carguemos algunos datos, porque como agregamos una columna, por defecto son NULL todos
/*
UPDATE Persona
SET apellido = 'Romero'
WHERE idPersona = 5;*/

SELECT nombrePersona
FROM Persona
ORDER BY apellido