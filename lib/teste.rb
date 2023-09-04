require 'cpf_cnpj'

def contagem_charac(char)
  char =~ /[0-9]/
end

def format_cpf(cpf)
  cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
end

def format_2_cpf(cpf)
  new_cpf = ''
  cpf.each_char do |char|
    if contagem_charac(char)
      new_cpf += char
    else
      puts "Caractere especial #{char} removido"
    end
  end
  format_cpf(new_cpf)
end

puts "Digite seu CPF: "
cpf_1 = gets.chomp

formatted_cpf = format_2_cpf(cpf_1)

puts "CPF formatado: #{formatted_cpf}"

def check_cpf(cpf)
  if CPF.valid?(cpf)
    return "CPF válido!"
  else
    return "CPF inválido!"
  end
end

puts "Validação do CPF #{formatted_cpf}: "
puts check_cpf(formatted_cpf)
