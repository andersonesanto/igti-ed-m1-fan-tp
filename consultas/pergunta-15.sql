# Pergunta 15
# Atualmente, quantos usuários estão suspensos na biblioteca?
select count(*) qtd_usuarios_suspensos from biblioteca.usuario where status = 'Suspenso';