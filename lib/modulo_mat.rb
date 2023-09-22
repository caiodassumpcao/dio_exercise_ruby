module OperacoesMatematicas
  def soma(a, b)
    a + b
  end

  def subtracao(a, b)
    a - b
  end

  def multiplicacao(a, b)
    a * b
  end

  def divisao(a, b)
    if b != 0
      a / b
    else
      "Divisao por zero nao e permitida."
    end
  end
end

class Calculadora
  include OperacoesMatematicas
end

calc = Calculadora.new
puts calc.soma(5, 3)
