# Filtrando por campos
select * from cursos
where nome = 'PHP';

# Filtro com caractere especifico
select * from cursos
where nome like 'P%'; #Começam com a letra p

select * from cursos
where nome like '%a'; #Terminam com a letra a

select * from cursos
where nome like '%a%'; #Faz o filtro de todos registros que contenham a letra 'a'

select * from cursos
where nome not like '%a%'; #Faz o filtro de todos registros que contenham não contenha a letra 'a'











