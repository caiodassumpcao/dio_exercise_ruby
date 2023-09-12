require_relative 'desafio_mercado_produto'
require_relative 'desafio_mercado_loja'

produto1 = Produto.new
produto1.nome = 'Mouse'
produto1.preco = 89.99
produto2 = Produto.new
produto2.nome = 'Teclado'
produto2.preco = 120.00
produto3 = Produto.new
produto3.nome = 'Headfone'
produto3.preco = 147.50
produto4 = Produto.new
produto4.nome = 'Placa de video'
produto4.preco = 1080.00
custo_total = produto1.preco + produto2.preco + produto3.preco + produto4.preco

Mercado.new(produto1.nome, produto1.preco).comprar
Mercado.new(produto2.nome, produto2.preco).comprar
Mercado.new(produto3.nome, produto3.preco).comprar
Mercado.new(produto4.nome, produto4.preco).comprar
puts "Custo total da compra foi de R$: #{custo_total}"

