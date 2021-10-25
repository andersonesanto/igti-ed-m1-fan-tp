# pergunta 12
# Qual o nome do livro e o nome de seu respectivo autor para o livro mais
# emprestado da biblioteca?

select titulo_livro, count(*)  as qt_emprestimos from (SELECT 
    emprestimos.idexemplar,
    emprestimos.idusuario,
    emprestimos.data_emprestimo,
    exemplar.id,
    livro.titulo_livro
FROM
    biblioteca.emprestimos,
    biblioteca.exemplar,
    biblioteca.livro
WHERE
    exemplar.id = emprestimos.idexemplar
        AND exemplar.id_livro = livro.id) as emprestimos_agrupados
        group by titulo_livro
        order by qt_emprestimos desc;
        
show errors;