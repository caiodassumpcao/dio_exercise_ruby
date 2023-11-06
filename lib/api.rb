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

file_path = 'lista.txt'

if File.exist?(file_path)
  File.open(file_path, 'r') do |file|
    file.each_line do |line|
      puts line
    end
  end
else
  puts "O arquivo 'lista.txt' não foi encontrado em '#{file_path}'."
end

File.open('lista.txt', 'a') do |line|
  line.puts ('Laranja')
  line.puts ('Granola')
end