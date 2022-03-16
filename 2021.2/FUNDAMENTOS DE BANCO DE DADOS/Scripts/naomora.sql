select  a.id, a.nome, c.nome as nome_cidade_aonde_mora
from    alunos a
          inner join cidades c
              on c.id = a.idcid
where       a.idcid != 1