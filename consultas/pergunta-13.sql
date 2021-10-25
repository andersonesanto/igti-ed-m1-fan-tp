# Pergunta 13 
# Considerando os números de empréstimos realizados por cada usuário, qual o
# nome do usuário que mais fez empréstimos na biblioteca?

SELECT 
    usuario.nome, COUNT(*) qtd_emprestimos
FROM
    biblioteca.emprestimos
    join biblioteca.usuario on idusuario = id
GROUP BY usuario.nome
ORDER BY qtd_emprestimos DESC;

show errors;