module Autenticacao
  def autenticar(usuario, senha)
    if usuario == 'admin' && senha == 'senha123'
      "Acesso liberado!"
    else
      "Acesso negado!"
    end
  end
end

class Login
  include Autenticacao
end

puts "User:"
user = gets.chomp

puts "Password: "
password = gets.chomp

login = Login.new
puts login.autenticar(user, password)