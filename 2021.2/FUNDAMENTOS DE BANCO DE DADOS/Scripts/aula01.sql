CREATE TABLE clientes
(
    id int not null,
    nome varchar(150) not null,
    whats varchar(17), 
    PRIMARY KEY id --define a chave primaria no final;

);

--Diferença entre CHAR(N) e VARCHAR(N)

/*

termo char(10)
termo_1 varchar(10) [armazena apenas o que está sendo utilizado, é uma evolução do char]

termo
|||||||||| (char)
oi||||||||
alo|||||||

termo_1

oi
alo
*/


CREATE TABLE clientes
(
    id INT not null auto_increment PRIMARY KEY, --define a chave primaria no inicio;
    nome CHAR(150) not null,
    whats CHAR(17), 
);

/*
tipos de dados de tempo

date yyyy-mm-dd
datetime yyyy-mm-dd hh:mm:ss
time hh:mm:ss
timeStamp yyyy-mm-dd hh:mm:ss

*/
-- criar a tabela vendas que relaciona com clientes

CREATE TABLE vendas
(
    id INT not null auto_increment PRIMARY KEY,
    data_emissao date not null,
    id_cliente INT not null,
    constraint faz_venda
        foreign key(id_cliente)
            references clientes(id)

);

/*
um produto percente a uma categoria e uma categoria tem muitos produtos
um produto tem muitas fotos e uma foto pertence a mais de um produto

    quantas tabelas eu terei aqui?

    comandos DDL?
*/

CREATE TABLE categorias
(
    id INT not null auto_increment PRIMARY KEY,
    nome_categoria varchar(60) not null,


);

CREATE TABLE produtos
(
    id INT not null auto_increment PRIMARY KEY,
    nome varchar(50) not null,
    valor FLOAT not null,
    quantidade INT not null,
    id_categoria INT not null,
    constraint produto_pertence
        foreign key(id_categoria)
        references categorias(id)

);

CREATE TABLE fotos
{
    id INT not null auto_increment PRIMARY KEY,
    url_fot varchar(255) not null,
    
};

CREATE TABLE fotos_produto (

  id_foto INT not null,
  id_produto INT not null,
  constraint fotos_produtos_fotos_fk
    foreign key (id_foto)
      references fotos(id)
  constraint foto_produtos_produtos_fk
    foreign key (id_produto)
      references produtos(id)
);