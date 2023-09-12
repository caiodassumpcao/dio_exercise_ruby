# Criar "produto.rb" e criar classe comnome e preço
# "mercado.rb" -> criar classe  Mercado que ao ser inicializada recebe como atributo um objeto da classe Produto
# Criar metodo "Comprar" que imprime "Voce comprou o produto #{@produto.nome} no valor de #{@produto.preco}"
# "app.rb" criar instancia de classe Produto e add valores ao atributos nome e preço.
# Inicie uma instancia da classe Mercado passando um objeto como atributo e execute

class Produto
  attr_accessor :nome, :preco
end