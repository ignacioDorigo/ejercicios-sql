USE personas;

INSERT INTO PersonaTemporal(idPersona,nombrePersona,idComidaFavorita,idColorFavorito,apellido)
SELECT idPersona, nombrePersona,idComidaFavorita,idColorFavorito,apellido
FROM Persona;