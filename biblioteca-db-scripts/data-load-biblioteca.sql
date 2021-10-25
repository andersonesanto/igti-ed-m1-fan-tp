LOAD DATA local INFILE "dataset/editora.csv"
INTO TABLE biblioteca.editora
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA local INFILE "dataset/area_conhecimento.csv"
INTO TABLE biblioteca.area_conhecimento
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA local INFILE "dataset/autor.csv"
INTO TABLE biblioteca.autor
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA local INFILE "dataset/autoria.csv"
INTO TABLE biblioteca.autoria
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA local INFILE "dataset/emprestimos.csv"
INTO TABLE biblioteca.emprestimos
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idexemplar,idusuario,@rdata_emprestimo,@rdata_prevista_devolucao,@rdata_devolucao,@rhora_devolucao)
set data_emprestimo = str_to_date(@rdata_emprestimo,'%m/%d/%YYYY'),
    data_prevista_devolucao = str_to_date(@rdata_prevista_devolucao,'%m/%d/%YYYY'),
    data_devolucao = str_to_date(@rdata_devolucao,'%m/%d/%YYYY'),
    hora_devolucao = str_to_date(@rhora_devolucao,'%H:%i:%s');


LOAD DATA local INFILE "dataset/exemplar.csv"
INTO TABLE biblioteca.exemplar
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA local INFILE "dataset/livro.csv"
INTO TABLE biblioteca.livro
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA local INFILE "dataset/usuario.csv"
INTO TABLE biblioteca.usuario
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id, nome,cpf, rg, @rdata_nascimento, sexo, email, cep, logradouro, num, bairro, cidade, uf, telefone_fixo, celular, status)
SET data_nascimento = str_to_date(@rdata_nascimento,'%m/%d/%YYYY');
