select  count(idaluno) as quantidade_de_alunos, idturma as id_sala_com_mais_alunos
from    matriculas M
group by idturma
ORDER by quantidade_de_alunos DESC
LIMIT 1