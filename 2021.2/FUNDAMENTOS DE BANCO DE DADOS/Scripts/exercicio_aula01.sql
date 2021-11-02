CREATE TABLE colaboradores
(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    nome varchar(80) not null,
    n_matricula int not null,
    endereco_email varchar(60) not null,
    senha_login int not null,

);


CREATE TABLE projetos
(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    estimativa_horas INT default 0,
    descricao varchar(250),
    nome varchar(80) not null,
    id_colaborador INT not null,
    id_admin INT not null,
    constraint projetos_colaboradores_fk
        foreign key (id_admin)
            references colaboradores(id)
    
);

CREATE TABLE projetos_participantes
(
    id_participante INT not null,
    id_projeto INT not null,
    constraint projetos_participantes_participantes_projetos_fk
        foreign key (id_colaborador)
            references colaboradores(id)
    constraint projetos_participantes_projeto_fk
        foreign key (id_projeto)
            references projetos(id)
);

CREATE TABLE projetos_sociais
(
    id int not null PRIMARY KEY,
    publico_benefiniciario varchar(100) not null
    id_projeto INT not null,   
    constraint projetos_sociais_projetos_fk
        foreign key (id_projeto)
            references projetos(id)
);

CREATE TABLE melhorias_de_processo
(
    id int not null PRIMARY KEY,
    resultados_esperados int not null,
    departamento varchar(50) not null,
    id_projeto INT not null,   
    constraint projetos_melhoria_projetos_fk
        foreign key (id_projeto)
            references projetos(id)
);


CREATE TABLE comentarios 
(
    id int not null PRIMARY KEY,
    conteudo varchar(200) not null,
    datahora_envio datetime not null,
    id_colaborador INT not null,
    constraint comentario_pertencente_fk
        foreign key(id_colaborador)
            references colaboradores(id)
);

--Incluir campo CPF na tabela

ALTER table colaboradores
    ADD COLUMN CPF varchar(14);

--Deletar o campo matricula na tab colaboradores

ALTER TABLE colaboradores
    DROP COLUMN n_matricula;

-- Alterar o tamanho do campo endereco de email

ALTER table colaboradores
    modify endereco_email varchar(200);

-- Excluir uma foreign key

ALTER table projetos_sociais
    DROP foreign key projetos_sociais_projetos_fk

-- Criando uma foreign key

ALTER TABLE projetos_sociais
    add constraint projetos_sociais_projetos_fk
        foreign key (id_projeto)
            references projetos(id)