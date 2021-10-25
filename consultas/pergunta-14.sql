# Pergunta 14
# Existe algum idioma no qual os usuários nunca fizeram empréstimos? Qual?

create view biblioteca.idiomas_livros as SELECT distinct 
    livro.idioma AS idioma
FROM
    biblioteca.livro;

select * from biblioteca.idiomas_livros;

create view biblioteca.idiomas_emprestimos as SELECT distinct livro.idioma as idioma
FROM
    biblioteca.emprestimos,
    biblioteca.exemplar,
    biblioteca.livro
WHERE
    exemplar.id = emprestimos.idexemplar
        AND exemplar.id_livro = livro.id;
        
select * from biblioteca.idiomas_emprestimos;        
        
        
SELECT 
    *
FROM
    biblioteca.idiomas_livros
        LEFT JOIN
    biblioteca.idiomas_emprestimos USING (idioma)
WHERE
    idiomas_emprestimos.idioma IS NULL;

show errors;