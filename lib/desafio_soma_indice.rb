input1 = gets.chomp.split(',').map(&:to_i)
input2 = gets.chomp.split(',').map(&:to_i)

resultado = []

# Verificando se os dois arrays têm o mesmo tamanho
if input1.length == input2.length
  for i in 0...input1.length
    if i % 2 == 0
      resultado << input1[i] + input2[i]
    end
  end

  puts resultado.join(',')
else
  puts "Os arrays de entrada têm tamanhos diferentes."
end