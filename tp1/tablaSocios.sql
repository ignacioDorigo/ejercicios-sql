USE database_universidad;

CREATE TABLE Socios(
	codSocio VARCHAR(4) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	estado VARCHAR(12) NOT NULL,
	PRIMARY KEY (codSocio)
);