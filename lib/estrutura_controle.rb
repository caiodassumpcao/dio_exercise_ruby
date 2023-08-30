def par_ou_impar(numero)
  puts "Estrutura de Controle: If - Else"

  if numero % 2 == 0
    puts "Numero #{numero} e Par!"
  else numero % 2 != 0
  puts "Numero #{numero} e Impar!"
  end
end

puts "Par ou Impar: "
puts "Digite um numero para verificarmos se ele e par ou Impar"
numero = gets.chomp.to_i
par_ou_impar(numero)

def tabuada(numero)
  puts "Estrutura de Controle: For"

  for i in 1..10
    resultado = numero * i
    puts "#{numero} x #{i} = #{resultado}"
  end
end

puts "Tabuada:"
puts "Digite um numero para mostrarmos a tabuada: "
numero_tabuada = gets.chomp.to_i
tabuada(numero_tabuada)

def adivinha_numero()
  puts "Estrutura de Controle: While - If - Else - Elsif "

  tentativas = 0
  acertou = false

  while !acertou
    numero_secreto = rand(1.100)
    print "Digite seu palpite:"
    palpite = gets.chomp.to_i
    tentativas += 1

    if palpite == numero_secreto
      acertou = true
      puts "PARABENS! V3oce acertou o numero secerto: #{numero_secreto}"
    elsif palpite < numero_secreto
      puts "O numero secreto e maior que #{palpite}"
    else
      puts "O numero secreto e menor que #{palpite}"
    end
  end
end

adivinha_numero()



def case_find_semestre()
  puts "Estrutura de Controle: CASE"

  puts "Dige um numero correspondente ao mes para identificarmos o semestre: "
  mes = gets.chomp.to_i

  case mes
  when 1..3
    puts "Primeiro trimestre"
  when 4..6
    puts "Segundo trimestre"
  when 7..9
    puts "Terceriro trimestre"
  when 10..12
    puts "Quarto trimestre"
  else
    puts "Numero invalido, digite novamente: Janeiro = 1;Fevereiro = 2;Março = 3;Abril = 4;Maio = 5;Junho = 6;Julho = 7;Agosto = 8;Setembro = 9;Outubro = 10;Novembro = 11;Dezembro = 12 "
  end
end

case_find_semestre()

def for_linguagem_prog(linguaguens)
  puts "Estrutura de Controle: For"

  count = 1
  for linguaguens in linguaguens
    puts "#{count} - #{linguaguens}"
    count += 1
  end
end

linguaguens = ["Ruby", "Python", "Java"]
for_linguagem_prog(linguaguens)

def time_exempl(opcao)
  puts "Estrutura de Controle: Times"

  opcao.times {print " Print Test 1"}
  opcao.times {puts " Puts Test 1"}
  opcao.times do
    puts "Puts Test 2"
  end

  opcao.times do |contador|
    puts "Puts Test 3: #{contador}"
  end
  opcao.times do |contador|
    print " Puts Test 3: #{contador} "
  end
end

puts "Digite quantas vezes vai aparecer a mensagem"
opcao = gets.chomp.to_i
time_exempl(opcao)

def do_while_contador()
  puts "Estrutura de Controle: Do While (Loop) "

  count = 1
  loop do
    puts count
    if count == 150
      break
    end
    count += 1
  end
end

do_while_contador()