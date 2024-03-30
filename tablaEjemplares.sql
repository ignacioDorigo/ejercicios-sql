CREATE TABLE Ejemplares(
	isbn VARCHAR(13) not null,
	numero INTEGER not null,
	anio INTEGER not null,
	edicion INTEGER not null,
	PRIMARY KEY (isbn,numero),
	FOREIGN KEY (isbn) references Libros(isbn)
); 