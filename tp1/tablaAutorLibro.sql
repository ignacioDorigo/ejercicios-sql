CREATE TABLE AutorLibro(
	codigo VARCHAR(4) not null,
	isbn VARCHAR(13) not null,
	PRIMARY KEY (codigo,isbn),
	FOREIGN KEY (codigo) references Autores(codAut),
	FOREIGN KEY (isbn) references Libros(isbn)
);