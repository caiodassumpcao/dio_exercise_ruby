def potencia()
  numeros = []
  puts "Digite o primeiro numero"
  numero1 = gets.chomp.to_i
  numeros.push(numero1)
  puts "Digite o segundo numero"
  numero2 = gets.chomp.to_i
  numeros.push(numero2)
  puts "Digite o terceiro numero"
  numero3 = gets.chomp.to_i
  numeros.push(numero3)

  novos_numeros = numeros.map do |x|
    x ** 3
  end
  puts "\n Numeros elevado ao cubo: #{novos_numeros}"

end

potencia()