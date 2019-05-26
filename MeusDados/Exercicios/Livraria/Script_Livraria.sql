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

ALTER TABLE Autor 
MODIFY COLUMN Nome varchar(30) not null,
MODIFY COLUMN Sexo char(1) not null;

ALTER TABLE Editora 
MODIFY COLUMN Nome varchar(30) not null,
MODIFY COLUMN Estado char(2) not null;

ALTER TABLE LIVRO
MODIFY COLUMN Nome varchar(30) not null,
MODIFY COLUMN NumeroDePaginas smallint not null,
MODIFY COLUMN Valor float(10,2) not null,
MODIFY COLUMN Ano smallint(4) not null,
MODIFY COLUMN Id_Autor int(11) not null,
MODIFY COLUMN Id_Editora int(11) not null;


INSERT INTO Autor VALUES (NULL, 'Ana Claudia', 'F');
INSERT INTO Autor VALUES (NULL, 'João Nunes', 'M');
INSERT INTO Autor VALUES (NULL, 'Celia Tavares', 'F');
INSERT INTO Autor VALUES (NULL, 'Eduardo Santos', 'M');
INSERT INTO Autor VALUES (NULL, 'Hermes Macedo', 'M');
INSERT INTO Autor VALUES (NULL, 'Geraldo Francisco', 'M');
INSERT INTO Autor VALUES (NULL, 'Leda Silva', 'F');
INSERT INTO Autor VALUES (NULL, 'Marco Alcantara', 'M');
INSERT INTO Autor VALUES (NULL, 'Clara Mafra', 'F');

INSERT INTO Editora VALUES (NULL, 'Atlas','RJ');
INSERT INTO Editora VALUES (NULL, 'Addison','SP');
INSERT INTO Editora VALUES (NULL, 'Beta','RJ');
INSERT INTO Editora VALUES (NULL, 'Bubba','MG');
INSERT INTO Editora VALUES (NULL, 'Insignia','ES');
INSERT INTO Editora VALUES (NULL, 'Larson','RS');
INSERT INTO Editora VALUES (NULL, 'Continental','SP');

ALTER TABLE LIVRO 
ADD CONSTRAINT FK_Livro_Autor
FOREIGN KEY (Id_Autor) REFERENCES Autor(IdAutor);

ALTER TABLE LIVRO 
ADD CONSTRAINT FK_Livro_Editora
FOREIGN KEY (Id_Editora) REFERENCES Editora(IdEditora);

INSERT INTO Livro VALUES (NULL, 'Cavaleiro Real', 465, 49.9, 2009, 1, 1);

INSERT INTO Livro VALUES (NULL, 'SQL para leigos', 450, 98, 2018, 2, 2);
INSERT INTO Livro VALUES (NULL, 'Receitas Caseiras', 210, 45, 2008, 3, 1);
INSERT INTO Livro VALUES (NULL, 'Pessoa Efetivas', 390, 78.99, 2018, 4, 3);
INSERT INTO Livro VALUES (NULL, 'Habitos Saudáveis', 630, 150.98, 2019, 4, 3);
INSERT INTO Livro VALUES (NULL, 'A Casa Marrom', 250, 60, 2016, 5, 4);
INSERT INTO Livro VALUES (NULL, 'Estacio Querido', 310, 100, 2015, 6, 5);
INSERT INTO Livro VALUES (NULL, 'Pra sempre amigas', 510, 78.98, 2011, 7, 5);
INSERT INTO Livro VALUES (NULL, 'Copas Inesqueciveis', 200, 130.98, 2018, 8, 6);
INSERT INTO Livro VALUES (NULL, 'O poder da mente', 120, 56.58, 2017, 9, 7);

|       1 | Ana Claudia       | F    |
|       2 | João Nunes        | M    |
|       3 | Celia Tavares     | F    |
|       4 | Eduardo Santos    | M    |
|       5 | Hermes Macedo     | M    |
|       6 | Geraldo Francisco | M    |
|       7 | Leda Silva        | F    |
|       8 | Marco Alcantara   | M    |
|       9 | Clara Mafra       | F    |

|         1 | Atlas       | RJ     |
|         2 | Addison     | SP     |
|         3 | Beta        | RJ     |
|         4 | Bubba       | MG     |
|         5 | Insignia    | ES     |
|         6 | Larson      | RS     |
|         7 | Continental | SP     |


1 - Trazer todos os dados

SELECT l.nome as 'Nome do Livro',
 a.nome as 'Nome do Autor',
 a.sexo as 'Sexo do Autor',
 l.numerodepaginas as 'Numero de Páginas',
 e.nome as 'Nome da Editora',
 l.valor as 'Valor do Livro',
 e.estado as 'Estado (UF) da Editora',
 l.ano as 'Ano de Plublicacao'
FROM Livro l 
INNER JOIN Autor a on a.idautor = l.id_autor
LEFT JOIN Editora e on e.ideditora = l.id_editora;

2 - Trazer o nome do livro e o nome da editora

SELECT l.nome as 'Nome do Livro',
 e.nome as 'Nome da Editora'
FROM Livro l 
INNER JOIN Autor a on a.idautor = l.id_autor
LEFT JOIN Editora e on e.ideditora = l.id_editora;

3 - Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.

SELECT l.nome as 'Nome do Livro',
 e.estado as 'Estado (UF) da Editora'
FROM Livro l 
INNER JOIN Autor a on a.idautor = l.id_autor
LEFT JOIN Editora e on e.ideditora = l.id_editora
WHERE a.sexo = 'M';

4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.

SELECT l.nome as 'Nome do Livro',
 l.numerodepaginas as 'Numero de Páginas'
FROM Livro l 
INNER JOIN Autor a on a.idautor = l.id_autor
LEFT JOIN Editora e on e.ideditora = l.id_editora
WHERE a.sexo = 'F';

5 - Trazer os valores dos livros das editoras de sao paulo

SELECT l.valor as 'Valor do Livro'
FROM Livro l 
INNER JOIN Autor a on a.idautor = l.id_autor
LEFT JOIN Editora e on e.ideditora = l.id_editora
WHERE e.estado = 'SP' ;

6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro

SELECT 
 a.nome as 'Nome do Autor',
 a.sexo as 'Sexo do Autor' 
FROM Livro l 
INNER JOIN Autor a on a.idautor = l.id_autor
LEFT JOIN Editora e on e.ideditora = l.id_editora
WHERE e.estado = 'SP' or e.estado = 'RJ';
