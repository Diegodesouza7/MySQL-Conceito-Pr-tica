desc cursos;
# MANIPULANDO REGISTROS
update cursos
set nome = 'HTML5'
where idcurso = 1;

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = 4;

update cursos
set nome = 'Java', ano = '2015' , carga = '40'
where idcurso = 5
limit 1;

select * from cursos;

