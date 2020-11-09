# ADICIONANDO UMA COLUNA
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10);
# DELETANDO UMA COLUNA
ALTER TABLE pessoas DROP COLUMN profissao;
# ADICIONANDO UMA COLUNA DEPOIS DO NOME
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10) AFTER nome;
# ADICIONANDO COMO PRIMEIRO CAMPO
ALTER TABLE pessoa ADD COLUMN codigo INT FIRST;

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
 
# MODIFICANDO OS TIPOS PRIMITIVOS OU CONSTRANTS
ALTER TABLE pessoas MODIFY profissao VARCHAR(20) NOT NULL DEFAULT '';
# MODIFICANDO TIPOS, CONSTRANTS E O NOME DA COLUNA
ALTER TABLE pessoas CHANGE COLUMN profissao prof VARCHAR(20);
# RENOMEANDO A TABELA
ALTER TABLE pessoas RENAME TO gafanhotos;

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-

# TESTANDO SE A COLUNA EXISTE
CREATE TABLE if not exists cursos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT,
    ano YEAR DEFAULT '2016'
);

# ADICIONANDO CHAVE PRIMERIA NO PRIMEIRO CAMPO
ALTER TABLE cursos ADD COLUMN idcurso INT FIRST;
# ADICIONANDO A CHAVE PRIMARIA 
ALTER TABLE cursos ADD PRIMARY KEY (idcurso);

#-==-=-=-=-=-=-=-=-=-==-=-=--=-==---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

CREATE TABLE IF NOT EXISTS teste(
    id INT,
    nome VARCHAR(10),
    idade INT
);

INSERT INTO teste VALUE
('1', 'Pedro', 22),
('2', 'Lucas', 33),
('3', 'João', 20);

 
# DELETANDO TABELAS
DROP TABLE IF EXISTS teste;

