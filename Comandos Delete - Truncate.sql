#DELETANDO REGISTROS

delete from cursos
where idcurso = 8;

delete from cursos
where ano - '2018'
limit 2;

truncate table cursos;

