
def desafio_basico_1(entrada)
  case entrada
  when 3
    numero_1 = 3
    numero_2 = 9
    prod = numero_1 * numero_2
    entrada -= 1
    puts "PROD = #{prod}"
  when 2
    numero_1 = -30
    numero_2 = 10
    prod = numero_1 * numero_2
    entrada -= 1
    puts "PROD = #{prod}"
  else
    numero_1 = 0
    numero_2 = 9
    prod = numero_1 * numero_2
    entrada -= 1
    puts "PROD = #{prod}"
  end
end
entrada = 3
desafio_basico_1(entrada)


