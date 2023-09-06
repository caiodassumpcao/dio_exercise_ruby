require_relative 'modelando_dominio_produto'
require_relative 'modelando_dominio_loja'


produto1 = Produto.new
produto1.nome = 'Mouse'
produto1.preco = 89.99
produto2 = Produto.new
produto2.nome = 'Teclado'
produto2.preco = 120.00
produto3 = Produto.new
produto3.nome = 'Headfone'
produto3.preco = 147.50

Loja.new(produto1.nome, produto1.preco).comprar
Loja.new(produto2.nome, produto2.preco).comprar
Loja.new(produto3.nome, produto3.preco).comprar
