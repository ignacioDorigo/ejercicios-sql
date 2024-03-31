USE personas;

CREATE TABLE Tabla1(
	idColor INTEGER NOT NULL,
	nombreColor VARCHAR(30) NOT NULL,
	PRIMARY KEY (idColor)
)

CREATE TABLE Tabla2(
	idComidaFavorita INTEGER NOT NULL,
	nombreComidaFavorita VARCHAR (30) NOT NULL,
	PRIMARY KEY (idComidaFavorita)
)

CREATE TABLE Persona(
	idPersona INTEGER NOT NULL,
	nombrePersona VARCHAR(30) NOT NULL,
	idComidaFavorita INTEGER,
	idColorFavorito INTEGER,
	PRIMARY KEY (idPersona),
	FOREIGN KEY (idColorFavorito) REFERENCES Tabla1(idColor),
	FOREIGN KEY (idComidaFavorita) REFERENCES Tabla2(idComidaFavorita)
)