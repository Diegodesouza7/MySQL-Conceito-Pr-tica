# Exercicios

# Selecione uma lista com o nome de todas mulheres
select nome from gafanhotos where sexo = 'F';

# Uma lista com todos aqueles que nasceram entre 01-01/2000 e 31-12-2015
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

# Uma lista com todos os homens que trabalham com programação
select * from gafanhotos where sexo = 'M' and profissao = 'Programador';

# Uma lista  com todas mulheres que nasceram no Brasil e que comecem com a letra J
select nome, nacionalidade from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

# Uma lista com nome e nacionalidade  de todos homens que tenha Silva no nome não nasceram no brasil e pesam menos que 100kg
select nome, nacionalidade, peso from gafanhotos
where  sexo = 'M' and nome like '%SILVA%' and nacionalidade <> 'Brasil' and peso < '100.00';

# Qual a maior alura entre os homens que nasceram no Brasil
select max(altura) from gafanhotos where sexo = 'M';

# Qual a media de peso dos gafanhotos cadastados
select avg(peso) from gafanhotos;

# Qual é o menor peso entre as mulheres que nasceram fora do Brasil entre 01-01-1990 e 31-12-2000
select nome, nacionalidade, min(peso) from gafanhotos
where sexo = 'F' and nacionalidade <> 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

# Quantas mulheres tem mais de 1.90 de altura
select nome, altura from gafanhotos where sexo = 'F' and altura > 1.90;
select count(nome) from gafanhotos where sexo = 'F' and altura > 1.90;






