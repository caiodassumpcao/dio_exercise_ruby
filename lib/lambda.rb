puts "             LAMBDA:"

carac = ["Lambda e iniciada com a palavra lambda", "Diferente de blocks, voce pode passar mais de uma lambda como argumentos de um metodo"]

puts "Caracteristicas:\n - #{carac[0]}\n - #{carac[1]}"

first_lambda = lambda { puts "Meu primeiro lambda"}
first_lambda.call

puts "Outra sintaxe para lambda ( -> ) "

second_lambda = -> { puts "Segundo lambda, nova sintaxe"}
second_lambda.call

puts "Lambda com parametros "

names = ["Caio", "Jack", "Carina"]
t_lambda = -> (names){ names.each { |name |puts name}}


t_lambda.call(names)


puts "Lambda de varias linhas "

meu_lambda = lambda do |numbers|
  i = 0
  puts "Numero atual + Proximo numero"
  numbers.each do |number|
    return if numbers[i] == numbers.last
    puts "(#{numbers[i]}) + (#{numbers[i + 1]})"
    puts numbers[i] + numbers[i + 1]
    i += 1
  end
end

numbers = [1, 2, 3, 4]

meu_lambda.call(numbers)

def teste(first_lambda, second_lambda)
  first_lambda.call
  second_lambda.call
end

first_lambda = lambda { puts "my first lambda"}

