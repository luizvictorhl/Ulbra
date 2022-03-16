Integridade referencial é um conceito relacionado à chaves estrangeiras. 
Este conceito diz que o valor que é chave estrangeira em uma tabela destino, deve ser chave primária de algum registro na tabela origem. 
Quando essa regra é desrespeitada, então temos o caso em que a integridade referencial é violada.


CREATE TABLE alunos(
    id serial not null PRIMARY key,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    telefone int not null,
    idcid int not null,

    CONSTRAINT idcid_alunos_fk
        FOREIGN KEY (idcid)
            REFERENCES cidades(id)

    ON DELETE RESTRICT
    ON UPDATE CASCADE
)

ON DELETE 
RESTRICT (rejeita a atualização ou exclusão de um registro da tabela pai, se houver registros na tabela filha)
CASCADE (apaga todos os dados relacionados com aquela tabela)

SET NULL (Define como null o valor do campo na tabela filha, ao atualizar ou excluir o registro da tabela pai)

ON UPDATE 
CASCADE (significa que, se a chave primária pai for alterada, o valor filho também será alterado para refletir isso)

--------------------------------------------------------------------------------------------------------------------------------------

