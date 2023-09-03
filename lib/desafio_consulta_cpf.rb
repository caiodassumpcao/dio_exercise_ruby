require 'cpf_cnpj'

def format_cpf()
  puts "Digite seu CPF:"
  cpf = gets.chomp
  tamanho_cpf = cpf.length
  if tamanho_cpf == 11
    cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
  else
    puts "CPF invalido, digite o cpf novamente! Escreva somente numeros"
  end
end

def contagem_charac(char)
  char =~ /[0-9]/
end


def format_2_cpf(cpf)
  new_cpf = []
  cpf.each_char do |char|
    if contagem_charac(char)
      puts "Special character #{char} removed"
    else
      new_cpf.push(char)
    end
  end
  format_cpf(new_cpf.join)
end

puts "Digite seu CPF: "
cpf_1 = gets.chomp
puts "CPF formatado: #{format_2_cpf(cpf_1)}"

def check_cpf(cpf)
  if CPF.valid?(cpf)
    return "CPF valido!"
  else
    return "CPF invalido!"
  end
end

puts "Validaçao do CPF #{cpf_1}: "
puts check_cpf(cpf_1)