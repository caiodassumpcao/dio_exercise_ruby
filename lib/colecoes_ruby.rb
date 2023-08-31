livros = []
livros.push("livro teste 1", "livro teste 3")

livros.insert(1, "Livro teste 2")
puts livros


animais = Hash.new
animais = { ave: "Papagaio", mamifero: "Mamaco", reptio: "Jaca", ave2: "Periquito", mamifero2: "Baleia" }
animais[:ave] = "Pombo"
animais.delete(:reptio)

puts animais
puts animais.keys
puts animais.values
puts animais.size
puts animais.empty?

livros.each do |livro|
  puts livro
end

animais.each do |key, value|
  puts "#{key} #{value}"
end

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numeros2 = [9, 8, 7, 6 ,5 ,5 ,4, 3, 2, 1]
def potencia_novo_array(numeros)
  novos_numeros = numeros.map do |x|
    x ** 2
  end
  puts "\nNumeros ao quadrado: #{novos_numeros}"
end
def potencia_array(numeros)
  numeros.map! do |x|
    x ** 2
  end
  puts "\nArray elevado ao quadrado: #{numeros}"
end
puts "\nNumeros originais: #{numeros}"
potencia_novo_array(numeros)
potencia_array(numeros2)

def pares(numeros)

  selecionados = numeros.select do |x|
    x % 2 == 0
  end
  puts "\n #{selecionados}"
end

pares(numeros)

selecionando_animais = animais.select do |key, value|
  key = "ave"
end

puts "#{selecionando_animais}"

