create table cidades
(
  cod int not null PRIMARY KEY,
  nome varchar(80) not null,
  uf varchar(2)
);

CREATE TABLE medicamentos
(
  cod int not null PRIMARY KEY,
  nome varchar(80) not null,
  composicao varchar(60) not null,
  preco float
);

CREATE TABLE medicos
(
  cod int not null PRIMARY KEY,
  nome varchar(80) not null,
  endereco varchar(60) not null,
  telefone int not null,
  crm int not null,
  cpf int not null,
  cod_cidade int not null,
  CONSTRAINT medico_cidade_fk
  	FOREIGN key (cod_cidade)
  		REFERENCES cidades(cod)
);

CREATE TABLE pacientes
(
  cod int not null PRIMARY key,
  nome varchar(80) not null,
  endereco varchar(60) not null,
  telefone int not null,
  cod_cidade int not null,
  CONSTRAINT pacientes_cidade_fk
  	FOREIGN key (cod_cidade)
  		REFERENCES cidades(cod)
);

CREATE TABLE consultas
(
  cod int not null PRIMARY KEY,
  datahora_consulta datetime,
  cod_medico int not null,
  cod_paciente int not null,
  CONSTRAINT medico_consulta_fk
  	FOREIGN key (cod_medico)
  		REFERENCES medicos(cod),
  CONSTRAINT paciente_consulta_fk
  	FOREIGN KEY (cod_paciente)
  		REFERENCES pacientes(cod)
);

CREATE TABLE prescriçoes
(
  posologia varchar(20) not null PRIMARY KEY,
  cod_consulta int not null,
  cod_medicamento int not null,
  CONSTRAINT prescriçoes_consulta_fk
  	FOREIGN key (cod_consulta)
  		REFERENCES consultas(cod),
  CONSTRAINT prescriçoes_medicamento_fk
  	FOREIGN key (cod_medicamento)
  		REFERENCES medicamentos(cod)
);