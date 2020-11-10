# EXERCÍCIOs

# Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao; 

# Quem são os atores ?
select * from gafanhotos
where profissao = 'ator';

# Quantos são os atores mesmo?
select count(*) from gafanhotos
where profissao = 'ator';

# Quantos gafanhotos homens e quantas mulheres nasceram após 01/01/2005?
select sexo, count(*) from gafanhotos
where nascimento >= '2005-01-01'
group by sexo;

# Mostrando apenas os nascidos a partir de 2005
select nome, nascimento from gafanhotos
where nascimento >= '2005-01-01' 
order by sexo;

# Verificando quantos foram os homens que nasceram depois de 01/01/2005
select count(*) from gafanhotos 
where nascimento > '2005-01-01' and sexo = 'M';


/*Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem 
e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 
gafanhotos com essa nacionalidade */


select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil' -- Onde a `nacionalidade` não seja 'Brasil'
group by nacionalidade
having count(*) > 3; -- Com contagem maior que 3


#Mas quantas pessoas temos de cada nacionalidade?
select nacionalidade, count(*) from gafanhotos
group by nacionalidade;


#E quais são os `gafanhotos` que não nasceram no Brasil?
select * from gafanhotos
where nacionalidade != 'Brasil';


/*Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais 
de 100Kg e que estão acima da media de altura de todos os cadastrados. */
select altura, count(*) from gafanhotos
where peso > 100.00
group by  altura
having altura > (select avg(altura) from gafanhotos);

#Qual a altura média dos gafanhotos?
select avg(altura) from gafanhotos; -- 1.66

#Quantos gafanhotos pesam acima dos 100kg?
select count(*) from gafanhotos 
where peso > 100;



