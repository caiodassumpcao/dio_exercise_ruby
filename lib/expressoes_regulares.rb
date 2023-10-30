#regex = Expressoes regulares
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

# saber se vem antes da palavra
puts match_data.pre_match

