INSERT INTO cidades (cod, nome, uf)
VALUES ('1', 'Capão da Canoa', 'RS'),
		('2', 'Torres', 'RS'),
        ('3', 'Criciuma', 'SC');
        
SELECT * FROM prescriçoes;
        
INSERT INTO medicamentos (cod, nome, composicao, preco)
values ('1', 'Paracetamol', 'povidona...', '12.50'),
		('2', 'Nimesulida', 'ácido cítrico...', '4.99'),
        ('3', 'Buscopan', '10 mg de butilbrometo...', '16.99');
        
INSERT INTO medicos (cod, nome, endereco, telefone, crm, cpf, cod_cidade)
VALUES ('1', 'Carla Mattos', 'Rua Imbituba 24', '196', '3356', '440', '2'),
		('2', 'Gilberto Barros', 'Rua Aldecir 855', '195', '5596', '441', '1'),
        ('3', 'Ana Caroline Barcellos', 'Rua Moacir Siqueira 633', '197', '8624', '442', '3');
        
INSERT INTO pacientes (cod, nome, endereco, telefone, cod_cidade)
values ('1', 'Joaquim Ferreira', 'Rua Cristovão Colombo 60', '990', '2'),
		('2', 'Carla Silva', 'Rua Nossa Senhora 23', '996', '1'),
        ('3', 'João Miguel Souza', 'Avenida Paraguassu 446', '997', '2');
        
INSERT INTO consultas (cod, datahora_consulta, cod_medico, cod_paciente)
values ('1', '2020-12-07-15:00:00', '2', '2'),
		('2', '2021-10-25-16:00:00', '1', '3'),
        ('3', '2021-10-25-19:30:00', '1', '1');
        
INSERT INTO prescriçoes (posologia, cod_medicamento, cod_consulta)
VALUES ('a cada 8hr', '2', '2'),
		('a cada 6hr', '1', '2'),
        ('a cada 12hr', '3', '3');
        
UPDATE medicamentos
	SET preco=preco*1.20
    WHERE cod=1;
    
delete from cidades where cod=3;

SELECT*FROM cidades
WHERE uf='RS';

SELECT nome, preco
FROM medicamentos;

SELECT MAX(preco) AS medicamento_mais_caro
FROM nome
where medicamentos;

SELECT AVG(preco) AS media_de_preco_medicamentos
FROM medicamentos

SELECT COUNT(codconsulta) AS quantas_consultas
FROM consultas

SELECT nome
FROM medicamentos
WHERE preco > (SELECT AVG(preco) AS media_de_preco_medicamentos
FROM medicamentos)

SELECT nome, telefone
FROM medicos
where cod_cidade=2;

SELECT medicamentos, posologia
from consultas;
where cod=1;

SELECT nome, telefone
FROM pacientes
where cod_cidade=1;

select m.nome as medico, p.nome as paciente, c.data, c.hora
from medicos m
    inner join consultas c
        on c.id_medico = m.id
    inner join pacientes p
        on p.id = c.id_paciente

select m.nome as medico, b.nome as medicamento  
from prescriçoes p 
    inner join consultas c
        on c.id = p.id_consulta
    inner join medicos m
        on m.id = c.id_medico
    inner join medicanentos b 
        on b.id= p.id_medicamento
    where m.id = 3999 and c.data between '2021-10-01' and '2021-10-30'

       