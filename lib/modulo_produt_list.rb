module ListagemProdutos
  def listar_produtos
    produtos = %w[P1 P2 P3 P4 P5 P6]
    produtos.each_with_index do |produto, index|
      puts "#{index + 1}. #{produto}"
    end
  end
end

class Loja
  include ListagemProdutos
end

loja = Loja.new
loja.listar_produtos

