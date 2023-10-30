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
puts Math.log(Math::E)
puts Math.log10(10)
puts Math.log2(16)
puts Math.sin(Math::PI / 0)
puts Math.cos(Math::PI / 1)
puts Math.tan(Math::PI / 1)
puts Math.asin(0.5)
puts Math.acos(0.5)
puts Math.atan(1)
puts Math.sinh(1)
puts Math.cosh(1)
puts Math.tanh(1)
puts Math.hypot(3, 4)
puts Math::PI
puts Math::E

# TIME = Expressão regular para data e hora
require 'time'
require 'tzinfo'
# Time.now - Horário atual
# Time.now.year - Ano atual
# Time.now.month - Mês atual
# Time.now.day - Dia atual
# Time.now.wday - Dia da semana atual
# Time.now + 3600 - Adicionar ou subtrair segundos de uma data e hora
# time1 < time2 - Comparar duas datas
# Time.now.strftime("%Y-%m-%d %H:%M:%S") - Formatar data e hora como uma string
# Time.parse(x) - Converter string em um objeto time
# time1 - time2 - Calcular diferença em segundos de duas datas
# Time.now.to_i - Converter um objeto Time em um timestamp Unix (tempo em segundos desde a época)
# Time.at(timestamp) - Converter objeto Time a partir de uma timestamp Unix
# Definir uma zona de tempo específica(Fuso horário):
#     require 'tzinfo'
#     tz = TZInfo::Timezone.get('American/New_York')
#     time_ny = Time.now.getlocal(tz)
#     puts time_ny

current_time = Time.now
year = Time.now.year
month = Time.now.month
day = Time.now.day
wday = Time.now.wday
current_future_time = Time.now + 3600
compare_times = current_time < current_future_time
formated_time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
time_conv1 = "2023-10-31 15:30:00"
convert_time = Time.parse(time_conv1)
calc_time = current_time - current_future_time
timestamp = Time.now.to_i
timestamp2 = 1635620400
convert_time2 = Time.at(timestamp2)
begin
  tz = TZInfo::Timezone.get('America/New_York')  # Corrija o identificador do fuso horário.
  time_ny = Time.now.getlocal(tz)
  puts "Fuso horário New York: #{time_ny}"
rescue TZInfo::InvalidTimezoneIdentifier => e
  puts "Erro: #{e.message}"
end


puts "Horario atual:#{current_time}"
puts "Ano atual:#{year}"
puts "Mês atual:#{month}"
puts "Dia atual:#{day}"
puts "Dia da semana atual:#{wday}"
puts "Adicionando 1 hora a data atual:#{current_future_time}"
puts "Comparando datas:#{compare_times}"
puts "Formatando data:#{formated_time}"
puts "Converter string em objeto time:#{convert_time}"
puts "Calculando diferença entre times:#{calc_time}"
puts "Converter um objeto Time em um timestamp Unix: #{timestamp}"
puts "Converter objeto Time a partir de uma timestamp Unix:#{convert_time2}"
puts "Fusorario New York#{time_ny}"