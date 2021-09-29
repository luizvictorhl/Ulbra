CREATE TABLE colaboradores
(
    id int not null,
    nome varchar(80) not null,
    n_matricula int not null,
    endereco_email varchar(60) not null,
    senha_login int not null,

)

CREATE TABLE projetos
(
    id int not null,
    estimativa_horas float not null,
    descricao varchar(250) not null,
    nome varchar(80) not null,
    constraint divisao_projeto_fk
        foreign key(id_projeto_social)
            references projetos_sociais(id)

    constraint divisao_projeto_projeto_fk
        foreign key(id_melhoria_de_processo)
            references melhorias_de_processo(id)

    constraint registra_projeto_fk
        foreign key(id_colaborador)
            references colaboradores(id)

    constraint participa_projeto_fk
        foreign key(id_participantes_projetos)
            references participantes_projetos(id)

    constraint comentarios_projeto_fk
        foreign key(id_comentario)
            references comentarios(id)
)

CREATE TABLE projetos_sociais
(
    id int not null,    
    publico_benefiniciario varchar(100) not null
)

CREATE TABLE melhorias_de_processo
(
    id int not null,
    resultados_esperados int not null,
    departamento varchar(50) not null,
)

CREATE TABLE participantes_projetos
(
    id int not null,
    constraint participante1_adicionado_fk
        foreign key(id_colaborador)
            references colaboradores(id)

    constraint participante2_adicionado_fk
        foreign key(id_colaborador)
            references colaboradores(id)

    constraint participante3_adicionado_fk
        foreign key(id_colaborador)
            references colaboradores(id)
)

CREATE TABLE comentarios 
(
    id int not null,
    conteudo varchar(200) not null,
    datahora_envio datetime not null,
    constraint comentario_pertencente_fk
        foreign key(id_colaborador)
            references colaboradores(id)
)