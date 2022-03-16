select a.nome as aluno, c.id as codigo_do_curso, c.nomecurso as nome_do_curso, p.nome as nome_do_professor, data_matricula
from alunos a
    inner join matriculas m
        on m.idaluno = a.id
    inner join turmas t
        on t.id = m.idturma
    inner join cursos c
        on c.id = t.idcurso
    inner join professores p
        on p.id = t.idprof
where data_matricula between '2019-01-01' and '2019-06-30'