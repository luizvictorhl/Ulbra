CREATE TABLE cidades
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
);

insert into cidades (nome, uf)
	values('Torres','RS'),('Capão','RS'),('Itapema','SC');
    
    Select * from cidades

CREATE TABLE medicos
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    fone VARCHAR(50),
    cidade_id INT NOT NULL,
    CONSTRAINT cidades FOREIGN KEY (cidade_id) REFERENCES cidades(ID)
  		on delete RESTRICT
  		on update CASCADE
);

CREATE TABLE pacientes
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cidade_id INT NOT NULL,
    CONSTRAINT cidades FOREIGN KEY (cidade_id) REFERENCES cidades(ID)
    	on delete RESTRICT
  		on update CASCADE
);

CREATE TABLE consultas
(
    ID serial NOT NULL PRIMARY KEY,
    data_consulta DATE not null,
  	valor float default 0,
    medico_id INT NOT NULL,
    paciente_id INT NOT NULL,
    CONSTRAINT medicos FOREIGN KEY (medico_id) REFERENCES medicos(ID)
  		on delete RESTRICT
  		on update CASCADE,
    CONSTRAINT pacientes FOREIGN KEY (paciente_id) REFERENCES pacientes(ID)
    		on delete RESTRICT
  		on update CASCADE
);

INSERT INTO cidades (nome, uf)
    VALUES ('Rondônia','RO'),('Acre','AC'),('Amazonas','AM'),('Roraima','RR'),('Pará','PA'),('Amapá','AP'),('Tocantins','TO'),('Maranhão','MA'),('Piauí','PI'),('Ceará','CE'),('Rio Grande do Norte','RN'),('Paraíba','PB'),('Pernambuco','PE'),('Alagoas','AL'),('Sergipe','SE'),('Bahia','BA'),('Minas Gerais','MG'),('Espírito Santo','ES'),('Rio de Janeiro','RJ'),('São Paulo','SP'),('Paraná','PR'),('Santa Catarina','SC'),('Rio Grande do Sul','RS'),('Mato Grosso do Sul','M');
    
INSERT into medicos (nome, fone, cidade_id)
values ('Pedro', 'xxxxxxx', 1),
('Ana', 'xxxxxxx', 2),
('Tiago', 'xxxxxxx', 3),
('João', 'xxxxxxx', 1),
('Patricia', 'xxxxxxx', 3),
('Maria', 'xxxxxxx', 2);]

ALTER TABLE pacientes add COLUMN endereco VARCHAR(70);
ALTER TABLE pacientes add COLUMN telefone varchar(70);

INSERT INTO pacientes (nome,endereco,telefone,cidade_id)
 VALUES
    ('Marcos','Rua verde','05188557766', 1),
    ('Julia','Rua vermelha','05499887755', 2),
    ('Maria','Rua azul','05499112233', 3);
    
INSERT INTO consultas(data_consulta, valor, medico_id, paciente_id)
VALUES
('2021/10/21', '120', 2, 1),
('2021/03/11', '170', 4, 2),
('2021/07/17', '120', 6, 1),
('2021/11/12', '170', 3, 3),
('2021/12/23', '250', 1, 3),
('2021/09/01', '150', 2, 2);

select* from medicos;


--1

select  p.nome as pacientes
from    pacientes p
        inner join consultas c
          on p.id = c.paciente_id
        inner join medicos m
          on m.id = c.medico_id
where   data_consulta = '2021-11-12' and m.nome like "%Rafael%";

--2

select pacientes*
from pacientes
	inner join consultas
    on pacientes.id = consultas.paciente_id
where data_consulta = CURRENT_DATE

--3
select SUM(valor) as total_consultas
from consultas
where data_consulta BETWEEN '2021-06-01' and '2021-06-30'
--4

from pacientes
	inner join consultas
   on consultas.paciente_id = pacientes.id
where consultas.medico_id=6565 and consultas.data BETWEEN '2021-12-01' and '2021-12-31'

--5

SELECT medicos.nome 
FROM consultas 
	INNER JOIN medicos 
    ON consultas.medico_id = medicos.id
    INNER JOIN pacientes 
    on consultas.paciente_id = pacientes.id
	inner JOIN cidades 
    on pacientes.cidade_id = cidades.id
WHERE cidades.id = 3;

--6 
select paciente_id,data, medico_id, nome_da_cidade
from consultas
	inner join pacientes
    	on pacientes.id = consultas.paciente_id
    inner join cidades
   	 on cidades.id = pacientes.cidade_id
where id=6479;


