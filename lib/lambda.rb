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