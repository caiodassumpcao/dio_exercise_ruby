require ''

def cpf()
  puts "Digite seu CPF:"
  cpf = gets.chomp
  tamanho_cpf = cpf.length
  if tamanho_cpf == 11
    cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
  else
    puts "CPF invalido, digite o cpf novamente!"
  end
end
end

def contagem_charac(cpf)

  #Aqui verificamos se o caractere e um digito ou espaco em branco
  char =~ /[0-9]\s]/
end
