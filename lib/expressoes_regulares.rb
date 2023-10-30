# REGEX = Expressão regular de busca
# Permite procurar coisas em Strings (Telefone, cpf, etc)

#Maneiras de representar o REGEX:
# 1. - Colocando entre barras: /asdfgh/
# 2. - Colocando prefixo: %r{}
# 3. - Colocando prefixo: Regexp.new('asdfgh')
# OBS: Sempre colocar no final para validação (se é ou nao regex): .class

#Operador de comparação =~
puts /by/ =~ 'ruby'
puts 'ruby' =~ /by/
puts 'rails' =~ /by/ #Vazio

#Metodo match Regex

phrase = "Olá, como você vai?"

# Saber se existe a palavra
match_data = /como/.match(phrase)
puts match_data

# saber oque vem antes da palavra (pre.match)
puts match_data.pre_match

# Saber oque vem depois da palavra (post.match)
puts match_data.post_match

# Procurar caracteres especiais:
# Necessário colocar uma contra-barra(\) antes
puts /\?/.match('Tudo bem?')


# MATH = Expressão regular para funções matemáticas

# Raiz quadrada
puts Math.sqrt(16)
# Raiz quadrada
puts Math.cbrt(64)

# Raiz quadrada
puts Math.sqrt(256)
