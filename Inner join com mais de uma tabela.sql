# Inner Join com mais de uma tabela

create table assiste (
id int not null auto_increment,
data date,
idg int,
idc int,
primary key (id),
foreign key (idg) references gafanhotos(id),
foreign key (idc) references cursos(idcurso)
) default charset = utf8;

insert into assiste values
(default, '2014-03-01', '1', '2');

desc gafanhotos;

select g.nome, c.nome from gafanhotos g
join assiste a 
on g.id = a.idg
join cursos c
on c.idcurso = a.idc
order by g.nome;