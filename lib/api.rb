# API - Application Programming Interface
# - Conjunto de normas
# - Criação de plataformas que se comunicam
# - Fácil e prático

# SERVIDOR WEB - Um servidor, computador, que recebe e envia solicitações feitas por um usuário
# - Pode ser: Estático ou Dinânmico.
#   - Estatico: Publicar um site
#
# - Tipos de servidores:
#   - De Aplicação
#   - De banco de dados
#   - De arquivos
#   - De email
#   - De mídia
#   - FTP
#   - Proxy
#   - Web (Computador se comunicando com um site, usando um SERVIDOR HTTP)

# File System - Sistema de arquivo
# - Parte responsável pelo gerenciamento de arquivos
# - Gerenciamento, criar pastas, ler, download e pagar arquivo
# - Resumo: Tudo que você faz com o seu mouse ou file system faz dentro da linguagem de programação

puts "**Minha lista de Compras**"

file = File.open('lista.txt')
file.each do |line|
  puts line
end

