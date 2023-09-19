def teste
  yield #palavra reservada
  yield
end

teste { puts "Execute o bloco"}
