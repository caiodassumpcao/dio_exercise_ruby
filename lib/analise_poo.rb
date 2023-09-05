def vantagens_poo()
  vantagens = ["Confiavel", "Oportuno", "Manutenivel", "Extensivel", "Reutilizavel", "Natural"]
  puts "Vantagens das linguagens em POO:"
  vantagens.each do |vantagem|
    case vantagem
    when "Confiavel"
      puts "#{vantagem}: Como as partes sao isoladas temos um software mais seguro. Esse isolamento permite que alteramos apenas uma das partes sem alterar as outras"
    when "Oportuno"
      puts "#{vantagem}: Como dividimos em partes, elas podem ser desenvolvidas em paralelo"
    when "Manutenivel"
      puts "#{vantagem}: De facil manutençao ou atualizaçao. Ao modificar uma unica parte voce pode beneficiar todas as partes que usam o mesmo objeto"
    when "Extensivel"
      puts "#{vantagem}: O software deve sempre crescer, para que permaneça util"
    when "Reutilizavel"
      puts "#{vantagem}: Usar um objeto de um sistema antigo para desenvolver um novo sistema e reutilizar o mesmo objeto em diferentes partes do projeto"
    when "Natural"
      puts "#{vantagem}: Facil de entender. A principal preocupaçao e a funcionalidade e nao os detalhes"
    end
  end
end

vantagens_poo()


def dominios()
  tipos_dominio = ["Aplicaçao", "Negocio", "Arquitetura", "Base", "Resumo da Camada Dominio"]
  puts "\n Tipos de dominios:"
  tipos_dominio.each do |tipos|
    case tipos
    when "Aplicaçao"
      puts "#{tipos}: O dominio de aplicaçao descreve classes 'cola', que servem para fazer as classes dos demais dominios funcionarem em um sistema"
    when "Negocio"
      puts "#{tipos}: O dominio de negocio descreve classes inerentes a uma determinada area do conhecimento"
    when "Arquitetura"
      puts "#{tipos}: O dominio de arquitetura fornece abstraçoes para a arquitetura de hardware ou sofware utilizado"
    when "Base"
      puts "#{tipos}: O dominio de base descreve classes fundamentais, estruturais e semanticas"
    when "Resumo da Camada Dominio"
      puts "#{tipos}: Contem toda informaçao sobre o dominio e e considerado o coraçao do projeto. Aqui e mapeado os objetos e comportamentos do mundo real para o software"
    end
  end
end

dominios()

def pilares_poo()
  pilares_poo = ["Abstraçao", "Encapsulamento", "Herança", "Polimorfismo"]
  puts "\n 4 pilares de POO:"
  pilares_poo.each do |pilar|
    case pilar
    when "Abstraçao"
      puts "1° - #{pilar}: Como estamos lidanddo com uma representaçao de um objeto real, temos que imaginar o que esse objeto ira realizar dentro de nosso codigo. Sao tres pontos que devemos levar em consideraçao nessa abstraçao."
      puts "1.1 Identidade do Objeto - Exemplo: Controle"
      puts "1.2 Propriedades do Objeto - Exemplo: Tamanho"
      puts "1.3 Metodos do Objeto - Exemplo: Ligar"
    when "Encapsulamento"
      puts "2° - #{pilar}: E um elemento que adiciona segurança a aplicaçao em POO pelo fato de esconder as propriedades, criando uma especie de blindagem, evitando que eles tenham acesso indevido."
      puts "Exemplo: Para ligar a tv nao temos acesso as config internas do controle, garantindo que voce nao vai alterar alguma funçao que voce nao domina e o controle pare de funcionar."
    when "Herança"
      puts "3° - #{pilar}: Reuso de codigo e uma das grandes vantagens da POO."
      puts "O objeto abaixo na hierarquia ira herdar caracteristicas de todos os objetos acima dele, seus 'ancestrais'."
      puts "A herança a  partir das caracteristicas do objeto mais acima e considerada herança direta, enquanto as demais sao heranças indiretas."
    when "Polimorfismo"
      puts "4° - #{pilar}: Varias formas."
      puts "Exemplo: A variaçao canhoto e destro e um polimorfismo"
      puts "Como vimos em herança, os objetos filhos herdam as caracteres e açoes de seus 'ancestrais'. Porem, em alguns casos e necessario que as açoes para um mesmo metodo seja diferente."
    end
  end
end

pilares_poo()

class Televisao
  def turn_on
    "Televisao ligada!"
  end
  def shutdown
    "Televisao desligada!"
  end
end

puts "\n"

smartv_lg = Televisao.new
puts smartv_lg.turn_on
puts smartv_lg.shutdown

class Animal
  def dormir
    "Animal dormiu"
  end

  def comer
    "Animal esta comendo"
  end
end

class Gato < Animal
  def miar
    "Miau"
  end
  def lamber
    "Animal esta se lambendo"
  end
end

puts "\n"
rubya = Gato.new
puts rubya.miar
puts rubya.lamber
puts rubya.comer

puts "\n"

class Trabalho
  def trabalho
    puts "Vamos começar a trabalhar!"
  end

end
class Codar < Trabalho
  def codando
    puts "Voce esta no ambiente de desenvolvimento:"
  end
end
class Rotular < Trabalho
  def rotulando
    puts "Voce esta no ambiente de rotulaçao:"
  end
end

class Organizacao < Trabalho

end

rotulacao = Rotular.new
codar = Codar.new
organizacao = Organizacao.new

organizacao.trabalho
rotulacao.rotulando
codar.codando

puts "\n"

class Teste
  def global
    $global = 0
    puts $global
  end
end

class Teste_2
  def outro_global
    $global += 1
    puts $global
  end
end

teste = Teste.new
teste_2 = Teste_2.new
teste.global
teste_2.outro_global
puts $global
puts "\n"
class Usuario
  @@usuario_count = 0
  def add(name)
    puts "Usuario #{name} adicionado"
    @@usuario_count += 1
    puts @@usuario_count
  end
end

first_user = Usuario.new
first_user.add('Caio')

second_user = Usuario.new
second_user.add('Jack')

class Instanceuser
  def add(name)
    @name = name
    puts "Usuario add"
    ola
  end

  def ola
    puts "Seja bem vindo(a), #{@name}!"
  end
end

puts "\n"
user_first = Instanceuser.new
user_first.add('Caio 2')
user_second = Instanceuser.new
user_second.add('Jack 2')

#ATRIBUTOS
puts "\n"
puts "ATRIBUTOS -> "

class Aluno
  attr_accessor :nome, :idade, :cidade
end

aluno = Aluno.new

aluno.nome = "Caio 3"
aluno.idade = 24
aluno.cidade = "Recife"

puts "Aluno: #{aluno.nome}"
puts "Idade: #{aluno.idade}"
puts "Cidade: #{aluno.cidade}"
puts "\n"

#CONTRUTORES
puts "\n"
puts "CONSTRUTORES -> "
puts "\n"

class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def conferencia
    puts "Instancia de classe iniciada com os valores:"
    puts "Nome: #{@nome}"
    puts "Idade: #{@idade}"
  end
end

pessoa1 = Pessoa.new('Caio 4', 24)
pessoa2 = Pessoa.new('Jack 4', 3)

pessoa1.conferencia
pessoa2.conferencia



