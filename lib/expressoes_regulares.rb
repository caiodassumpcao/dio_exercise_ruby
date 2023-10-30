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

#sqrt(x) - Calcula a raiz quadrada de x.
# cbrt(x) - Calcula a raiz cúbica de x.
# exp(x) - Calcula a exponencial de x.
# log(x) - Calcula o logaritmo natural de x.
# log10(x) - Calcula o logaritmo na base 10 de x.
# log2(x) - Calcula o logaritmo na base 2 de x.
# sin(x) - Calcula o seno de x (em radianos).
# cos(x) - Calcula o cosseno de x (em radianos).
# tan(x) - Calcula a tangente de x (em radianos).
# asin(x) - Calcula o arco seno de x, retornando o valor em radianos.
# acos(x) - Calcula o arco cosseno de x, retornando o valor em radianos.
# atan(x) - Calcula o arco tangente de x, retornando o valor em radianos.
# atan2(y, x) - Calcula o arco tangente do quociente y/x, retornando o valor em radianos.
# sinh(x) - Calcula o seno hiperbólico de x.
# cosh(x) - Calcula o cosseno hiperbólico de x.
# tanh(x) - Calcula a tangente hiperbólica de x.
# pow(x, y) - Calcula x elevado a y.
# hypot(x, y) - Calcula a hipotenusa de um triângulo retângulo com lados de comprimento x e y.


puts Math.sqrt(16)
puts Math.cbrt(64)
puts Math.exp(4)
puts Math.log10(10)
puts Math.log(Math::E)
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
puts Math
