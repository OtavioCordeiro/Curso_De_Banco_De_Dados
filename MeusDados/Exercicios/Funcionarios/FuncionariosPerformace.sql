-- Exercicios de performance

-- Traga os funcionarios que trabalham no departamento de filmes ou no departamento de roupas

-- Funcionarias que trabalhem no departamento de filmes ou no departamento de lar. Necessita enviar um email para os colaboradores dos 2 setores.

-- Funcionarios do sexo masculino ou os funcionarios que trabalhem no setor Jardim

-- create database exercicio;

-- use exercicio;

-- create table funcionarios
  -- (
      -- idFuncionario integer,
      -- nome varchar(100),
      -- email varchar(200),
      -- sexo varchar(10),
      -- departamento varchar(100),
      -- admissao varchar(10),
      -- salario integer,
      -- cargo varchar(100),
      -- idRegiao int
  -- );
  
  -- Add 1000 Registros
  
  select departamento, count(*) from funcionarios
  group by departamento
  order by 2 desc;
  
  SELECT * FROM Funcionarios 
  WHERE departamento = 'roupas' or departamento = 'filmes';
  
  SELECT * FROM Funcionarios 
  WHERE (departamento = 'lar' or departamento = 'filmes') and sexo = 'Feminino';
  
  
  select sexo, count(*) from funcionarios
  group by sexo;
  
  SELECT * from funcionarios
  where sexo = 'Masculino' or departamento = 'Jardim';
  