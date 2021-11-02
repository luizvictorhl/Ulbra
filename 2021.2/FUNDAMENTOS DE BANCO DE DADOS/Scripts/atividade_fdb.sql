create table fornecedores
(
  codigo int not null AUTO_INCREMENT PRIMARY KEY,
  nome varchar(80) not null
);

CREATE TABLE categorias
(
  codigo int not null AUTO_INCREMENT PRIMARY KEY,
  nome varchar(50) not null,
  codigo_produto int not null,
  
);

CREATE TABLE produtos
(
  codigo int not null AUTO_INCREMENT PRIMARY KEY,
  descricao varchar(80) not null,
  data_cadastro date not null,
  valor_unitario float not null
  constraint categorias_produtos_fk
      foreign key (codigo_categoria)
          references categorias(codigo)
);


CREATE TABLE pedidos
(
  id int not null AUTO_INCREMENT PRIMARY KEY,
  quantidade int not null,
  valor_unitario float not null,
  data_emissao date not null,
  codigo_fornecedor int not null,
  codigo_produto int not null,
  constraint pedidos_fornecedor_fk
      foreign key (codigo_fornecedor)
          references fornecedores(codigo)
  constraint pedidos_produtos_fk
      foreign key (codigo_produto)
          references produtos(codigo)
 
);

--N°3

ALTER TABLE fornecedores
	ADD COLUMN data_ultima_compra date not null;

--N°4

ALTER TABLE pedidos
	rename COLUMN data_emissao to data_pedido;

--N°5

ALTER TABLE produtos
	drop COLUMN data_cadastro;

--N°6

ALTER TABLE produtos DROP CONSTAINT produtos_categorias_fk 
ALTER TABLE produtos
 	ADD CONSTRAINT produtos_categorias_fk 
FOREIGN KEY (codigo_categoria)
    			REFERENCES categorias (codigo) 
ON DELETE CASCADE 
ON UPDATE RESTRICT;

--N°7

ALTER TABLE fornecedores
	MODIFY nome VARCHAR(110) NOT NULL;


--N°8

DROP TABLE fornecedores

nao será excluida

--N°9

ALTER TABLE pedidos
	ADD COLUMN numero_pedido varchar not null;
