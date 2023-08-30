def calculadora(operacoes)
  numero1 = operacoes[:numero1]
  numero2 = operacoes[:numero2]
  operacao = operacoes[:operacao]

  case operacao
  when 1
    resultado = numero1 + numero2
  when 2
    resultado = numero1 - numero2
  when 3
    resultado = numero1 * numero2
  when 4
    resultado = numero1.to_f / numero2
  else
    return "Operacao invalida"
  end

  resultado
end

puts "Escolha a operaçao desejada [ 1:soma - 2:subtracao - 3:multiplicacao - 4:divisao - 0:sair ]"
operacao = gets.chomp.to_i

if operacao == 0
  puts "Ate breve!"
else
  puts "Digite um numero"
  numero1 = gets.chomp.to_f
  puts "Digite outro numero"
  numero2 = gets.chomp.to_f
  opcoes = { numero1: numero1, numero2: numero2, operacao: operacao }
  puts calculadora(opcoes)
end


