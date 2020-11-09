# Filtrando por campos
select * from cursos
where nome = 'PHP';

# Filtro com caractere especifico
#Começam com a letra p
select * from cursos
where nome like 'P%'; 

#Terminam com a letra a
select * from cursos
where nome like '%a'; 

#Faz o filtro de todos registros que contenham a letra 'a'
select * from cursos
where nome like '%a%'; 

#Faz o filtro de todos registros que contenham não contenha a letra 'a'
select * from cursos
where nome not like '%a%'; 

#Faz o filtro de todos registros que comecem com ph e terminem com p
select * from cursos
where nome like 'ph%p'; 

# _ exige que tenha alguma coisa ao lado de p
select * from cursos
where nome like 'ph%p_'; 

# Começa com p, contem alguma letra depois e termine com p
select * from cursos
where nome like '%p_p%'; 

# Começa com p, contem duas letras depois e termine com p
select * from cursos
where nome like '%p__t%'; 

# Busca pessoas que tenham sobrenome silva
select * from gafanhotos
where nome like '%silva%'; 

# Lista quais nacionalidades que temos na base de dados ignorando repetições
select distinct nacionalidade from gafanhotos
order by nacionalidade; 









