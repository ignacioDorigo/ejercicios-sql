USE personas;
/*
INSERT INTO ComidaFavorita(idComidaFavorita,nombreComidaFavorita)
VALUES
	(1,'Pizza'),
	(2,'Hamburguesa'),
	(3,'Sushi');

INSERT INTO ColorFavorito(idColor,nombreColor)
VALUES
	(1,'Rojo'),
	(2,'Verde'),
	(3,'Azul'),
	(4,'Rosa'),
	(5,'Violeta'),
	(6,'Beige'),
	(7,'Naranja'),
	(8,'Amarillo');*/

INSERT INTO Persona(idPersona,nombrePersona,idComidaFavorita,idColorFavorito)
VALUES
	(1,'Esteban',NULL,1),
	(2,'Juan',NULL,3),
	(3,'Pedro',NULL,2),
	(4,'Damian',1,1),
	(5,'Roxana',3,NULL),
	(6,'Maria',1,NULL),
	(7,'Ignacio',NULL,5),
	(8,'Natalia',NULL,8);