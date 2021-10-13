CREATE table fornecedores
(
  codigo int not null auto_increment primary key,
  nome varchar(80) not null
);

CREATE TABLE produtos
(
   codigo int not null auto_increment primary key,
   descricao varchar(200) not null,
   data_cadastro DATe not null,
   valor_unitario float not null
);

CREATE table categorias
(
    codigo int not null auto_increment primary key,
    nome varchar(80) not null,
    codigo_produtos int not null,

    constraint categorias_produtos_fk
      foreign key (codigo_produtos)
          references produtos(codigo)
);


CREATE TABLE pedidos
(
    quantidade int not null,
    valor_unitario float not null,
    data date not null,
    codigo_fornecedores int not null,
    codigo_produtos int not null,

    constraint pedidos_fornecedores_fk
        foreign key (codigo_fornecedores)
            references fornecedores(codigo),

    constraint pedidos_produtos_fk
        foreign key (codigo_produtos)
            references produtos(codigo)
  
);


SELECT * FROM produtos;

INSERT INTO produtos (codigo,descricao, data_cadastro, valor_unitario)
VALUES ('1', 'Teclado', '2021-10-13', '249.90');

INSERT INTO produtos (codigo,descricao, data_cadastro, valor_unitario)
VALUES ('2', 'Mouse', '2021-10-25', '199.90');

INSERT INTO produtos (codigo,descricao, data_cadastro, valor_unitario)
VALUES ('3', 'Monitor', '2021-10-05', '749.90');

INSERT INTO produtos (codigo,descricao, data_cadastro, valor_unitario)
VALUES ('4', 'Headset', '2021-10-29', '329.90');

INSERT INTO produtos (codigo,descricao, data_cadastro, valor_unitario)
VALUES ('5', 'Mousepad', '2021-10-05', '99.90');

INSERT INTO produtos (codigo,descricao, data_cadastro, valor_unitario)
VALUES ('6', 'Impressora', '2021-10-18', '649.49');

DELETE FROM produtos where codigo=6;

UPDATE produtos
	SET descricao='Caixa de som'
    WHERE codigo=5;
    
SELECT*, valor_unitario*1.10 AS valor_ajustado
FROM produtos


INSERT INTO fornecedores (codigo, nome)
VALUES ('1', 'João');

INSERT INTO fornecedores (codigo, nome)
VALUES ('2', 'Carlos Alberto');

INSERT INTO fornecedores (codigo, nome)
VALUES ('3', 'Airton Silva');

SELECT * FROM fornecedores;

INSERT INTO pedidos (quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
VALUES ('5','749.90','2021-10-01', '1', '3');

INSERT INTO pedidos (quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
VALUES ('8','329.90','2021-10-06', '1', '4');

INSERT INTO pedidos (quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
VALUES ('2','749.90','2021-11-18', '2', '3');

INSERT INTO pedidos (quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
VALUES ('2','329.90','2021-11-07', '2', '4');

INSERT INTO pedidos (quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
VALUES ('6','99.90','2021-10-21', '3', '5');

INSERT INTO pedidos (quantidade, valor_unitario, data, codigo_fornecedores, codigo_produtos)
VALUES ('3','649.49','2021-10-31', '3', '1');

SELECT * FROM pedidos;

SELECT * FROM pedidos
WHERE data BETWEEN '2021-10-01' AND '2021-10-31'

SELECT * from produtos
WHERE descricao like '%m%%'
