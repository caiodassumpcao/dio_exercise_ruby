
# Solicita a entrada do usuário
def soma()
  print "Digite um número inteiro: "
  entrada = gets.chomp.to_i

  # Soma 2 ao número de entrada
  resultado = entrada + 2

  # Imprime o resultado formatado
  puts "O resultado foi: #{resultado}"
end
soma()

def temperatura()
  print "Digite a temperatura"
  temp = gets.chomp.to_i
  temp_amena = 25

  if temp > temp_amena
    puts "Está calor!"
  else
    puts "Temperatura esta amena"
  end
end

temperatura()

def maior_num()
  print "Digite um numero:"
  number1 = gets.chomp.to_i
  print "Digite outro numero:"
  number2 = gets.chomp.to_i

  if number1 > number2
    puts "O número #{number1} é o maior e o #{number2} é o menor"
  else
    puts "O número #{number2} é o maior e o #{number1} é o menor"
  end
end

maior_num()