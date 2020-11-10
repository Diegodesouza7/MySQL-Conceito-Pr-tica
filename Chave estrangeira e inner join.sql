select * from gafanhotos;
select * from cursos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos (idcurso); -- Adicionando chave estrangeira

update gafanhotos set cursopreferido = '6' where id = '1'; -- Adicionando curso preferido

# Join de tabelas

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c -- Apelidos de colunas utilizando as 
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g right outer join cursos as c -- Mostrando todos alunos indepente de ter ou não curso preferido 
on c.idcurso = g.cursopreferido
order by g.nome;

