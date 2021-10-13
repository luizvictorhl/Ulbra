CREATE TABLE postagens
(
  id int not null AUTO_INCREMENT PRIMARY key,
  titulo varchar(50) not null,
  data_envio date not null
);

CREATE TABLE mensagens
(
  id int not null AUTO_INCREMENT PRIMARY key,
  descricao varchar(80),
  id_postagem int not null,
  	CONSTRAINT postagens_mensagens_fk
  		FOREIGN KEY (id_postagem)
  			REFERENCES postagens(id)
  			 ON DELETE CASCADE
            ON UPDATE RESTRICT
);

INSERT INTO postagens (titulo, data_envio)
	VALUES('primeira postagem', '2021-10-08');
    
SELECT * FROM postagens;

INSERT INTO mensagens (descricao,id_postagem)
	VALUES('minha primeira postagem aqui', 1);
    
SELECT * FROM mensagens;

INSERT INTO mensagens (descricao,id_postagem)
	VALUES('segunda linha', 1);
    
DELETE FROM mensagens WHERE id=1;

update postagens SET titulo='postagem alterada', data_envio='2021-10-01'
WHERE id=1;

--todas postagens em um espaço de TEMPO

SELECT * FROM postagens
WHERE data_envio BETWEEN '2021-09-01' AND '2021-09-30'

SELECT * from mensagens
WHERE descricao like '%linha%'







