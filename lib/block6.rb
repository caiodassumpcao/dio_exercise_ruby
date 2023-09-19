def teste(name, &block)
  @name = name
  block.call
end

teste('Caio') { puts "Ola #{@name}" }