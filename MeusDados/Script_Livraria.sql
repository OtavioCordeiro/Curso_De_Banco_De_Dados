CREATE TABLE Livro (
IdLivro int PRIMARY Key Auto_Increment,
Nome varchar(30),
NumeroDePaginas smallint(4),
Valor float(4,2),
Ano int(4)
);

CREATE TABLE Autor (
IdAutor int PRIMARY KEY Auto_Increment, 
Nome varchar(30),
Sexo char(1),
Id_Livro int
);

Alter Table Autor
ADD Constraint FK_Autor_Livro
FOREIGN KEY (Id_Livro) REFERENCES Livro(IdLivro);

CREATE TABLE Editora ( 
IdEditora int PRIMARY KEY Auto_Increment,
Nome varchar(30),
Estado char(2),
Id_Livro int
);

Alter Table Editora
ADD Constraint FK_Autor_Editora
FOREIGN KEY (Id_Livro) REFERENCES Livro(IdLivro);