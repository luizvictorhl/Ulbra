CREATE TABLE fornecedores
(
  id INT not null PRIMARY KEY,
  nome varchar(80) not null,
  status varchar(50) NOT null,
  cidade varchar(40)
);

CREATE TABLE pecas
(
  id int not null PRIMARY KEY,
  nome varchar(50) not null,
  cor varchar(20),
  peso int not null,
  cidade varchar(40)
);

CREATE TABLE instituicoes
(
  id int not null PRIMARY KEY,
  nome varchar(20) not null
);

CREATE TABLE projetos
(
  id int not null PRIMARY KEY,
  nome varchar(50) not null,
  cidade varchar(40),
  id_instituicao int not null,
  CONSTRAINT projetos_instituicao_fk
  	FOREIGN key (id_instituicao)
  		REFERENCES instituicoes(id)
);

CREATE TABLE fornecimento
(
  quantidade int not null PRIMARY KEY,
  id_fornecedor int not null,
  id_projeto int not null,
  id_peca int not null,
  CONSTRAINT fornecimento_fornecedor_fk
  	FOREIGN key (id_fornecedor)
  		REFERENCES fornecedores(id)
  CONSTRAINT fornecimento_projeto_fk
  	FOREIGN key (id_projeto)
  		REFERENCES projetos(id)
  CONSTRAINT fornecimento_peca_fk
  	FOREIGN key (id_peca)
  		REFERENCES pecas(id)
  );