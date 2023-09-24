module Menu
  MENU_ITEMS = {
    "Hamburguer" => 10,
    "Pizza" => 12,
    "Salada" => 6,
    "Refrigerante" => 2
  }.freeze

  def self.listar_menu
    puts "=== Menu ==="
    MENU_ITEMS.each do |item, preco|
      puts "#{item}: R$:#{preco}"
    end
    puts "============"
  end
end

module Pedidos
  @pedidos = []

  def self.adicionar_pedidos(item, quantidade)
    @pedidos << { item: item, quantidade: quantidade }
  end
  def self.listar_pedidos
    puts "=== Pedidos ==="
    @pedidos.each do |pedido|
      puts "#{pedido[:quantidade]}x #{pedido[:item]}"
    end
    puts "=================="
  end
end

module Faturamento
  def self.calcular_total
    total = 0
    Pedidos.instance_variable_get(:@pedidos).each do |pedido|
      preco = Menu::MENU_ITEMS[pedido[:item]]
      total += preco * pedido[:quantidade] if preco
    end
    total
  end
end

module Clientes
  @clientes = []

  def self.adicionar_cliente(nome)
    @clientes << nome
  end

  def self.listar_clientes
    puts "=== Clientes ==="
    @clientes.each do |cliente|
      puts cliente
    end
    puts "================"
  end
end

Menu.listar_menu
Pedidos.adicionar_pedidos("Hamburguer", 2)
Pedidos.adicionar_pedidos("hamburger", 1)
Pedidos.adicionar_pedidos("Refrigerante", 3)
Pedidos.listar_pedidos

Clientes.adicionar_cliente("Caio")
Clientes.adicionar_cliente("jack")
Clientes.listar_clientes

total = Faturamento.calcular_total
puts "Total de Pedidos: R$:#{total}"