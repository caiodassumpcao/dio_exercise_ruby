def desafio_basico_1(entrada)
  numero_1 = 0
  numero_2 = 9

  case entrada
  when 3
    numero_1 = 3
  when 2
    numero_1 = -30
    numero_2 = 10
  end

  prod = numero_1 * numero_2
  entrada -= 1
  puts "PROD = #{prod}"
end

entrada = 3

# Chama a função para cada valor de entrada
(1..entrada).each do |i|
  desafio_basico_1(i)
end