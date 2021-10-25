# Pergunta 11 
# Quantos usuários cadastrados possuem nome iniciando com a letra P?
SELECT 
    COUNT(*) qtd_usuarios_nome_inicia_com_p
FROM
    biblioteca.usuario
WHERE
    UPPER(nome) LIKE 'P%';