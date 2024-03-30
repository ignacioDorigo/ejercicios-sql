USE database_universidad;

CREATE TABLE Autores(
	codAut VARCHAR(4) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	pais VARCHAR(15) NOT NULL,
	PRIMARY KEY(codAut)
);