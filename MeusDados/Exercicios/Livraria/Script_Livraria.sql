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

Cavaleiro Real
SQL para leigos
Receitas Caseiras
Pessoas Efetivas
Habitos Saudáveis
A Casa Marrom
Estacio Querido
Pra sempre amigas
Copas Inesqueciveis
O poder da mente


INSERT INTO Livro VALUES (NULL, 'Cavaleiro Real', 465, 49.9, 2009, 1, 1);
INSERT INTO Livro VALUES (NULL, 'SQL para leigos', 450, 98, 2018);
INSERT INTO Livro VALUES (NULL, 'Receitas Caseiras', 210, 45, 2018);
INSERT INTO Livro VALUES (NULL, 'Pessoa Efetivas', 210, 45, 2018);
INSERT INTO Livro VALUES (NULL, 'Habitos Saudáveis', 155, 78, 2018);
INSERT INTO Livro VALUES (NULL, 'A Casa Marrom', 856, 451, 2019);
INSERT INTO Livro VALUES (NULL, 'Estacio Querido', 312, 44, 2016);
INSERT INTO Livro VALUES (NULL, 'Pra sempre amigas', 97, 47.56, 2015);
INSERT INTO Livro VALUES (NULL, 'Copas Inesqueciveis', 155, 49.91, 2011);
INSERT INTO Livro VALUES (NULL, 'O poder da mente', 312, 147.7, 2017);

SELECT * FROM LIVRO;

INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F',1);
INSERT INTO Autor VALUES (NULL, 'João Nunes', 'M',2);
INSERT INTO Autor VALUES (NULL, 'Celia Tavares', 'F',1);
INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F',1);
INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F',1);
INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F',1);
INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F',1);
INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F',1);
INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F',1);

Ana Claudia	Feminino
João Nunes	Masculino
Celia Tavares	Feminino
Eduardo Santos	Masculino
Eduardo Santos	Masculino
Hermes Macedo	Masculino
Geraldo Francisco	Masculino
Leda Silva	Feminino
Marco Alcantara	Masculino
Clara Mafra	Feminino

-- Percebi a Modelagem errada

ALTER TABLE Autor DROP FOREIGN KEY FK_Autor_Livro;
ALTER TABLE Autor Drop COLUMN Id_Livro;

ALTER TABLE Editora DROP FOREIGN KEY FK_Autor_Editora;
ALTER TABLE Editora Drop COLUMN Id_Livro;

ALTER TABLE Livro ADD COLUMN Id_Autor INT;
ALTER TABLE Livro ADD COLUMN Id_Editora INT;

ALTER TABLE AUTOR DROP COLUMN Id_Autor;
ALTER TABLE AUTOR DROP COLUMN Id_Editora;

DELETE * FROM LIVRO;

-- Resetar autoIncrement

ALTER TABLE LIVRO Auto_Increment = 1;

-- ADD Autores

-- ADD Editoras

-- ADD Livros