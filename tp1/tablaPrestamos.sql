CREATE TABLE Prestamos(
	isbn VARCHAR(13) not null,
	ejemplar INTEGER not null,
	socio VARCHAR(4) not null,
	fecha DATE not null,
	estado VARCHAR(1) not null ,
	PRIMARY KEY (isbn, ejemplar, socio),
	FOREIGN KEY (isbn) references Libros(isbn),
	FOREIGN KEY (isbn,ejemplar) references Ejemplares(isbn,numero),
	FOREIGN KEY (socio) references Socios(codSocio)
);