require 'cpf_cnpj'

include CpfCnpj

def format_cpf(cpf)
  tamanho_cpf = cpf.length
  if tamanho_cpf == 11
    cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
    return cpf
  else
    return "CPF inválido, digite o CPF novamente! Escreva somente números"
  end
end

def contagem_charac(char)
  char =~ /[0-9]/
enddb

def teste
  c = 4
  if c > 0
    c += 1
    puts c
    puts ""
  end
end

def format_2_cpf(cpf)
  new_cpf = []
  cpf.each_char do |char|
    if contagem_charac(char)
      puts "Caractere especial #{char} removido"
    else
      new_cpf.push(char)
    end
  end
  return new_cpf.join
end

puts "Digite seu CPF: "
cpf_1 = gets.chomp
formatted_cpf = format_cpf(cpf_1)
puts "CPF formatado: #{formatted_cpf}"

puts "Validação do CPF #{formatted_cpf}: "
if CPF.valid?(formatted_cpf)
  puts "CPF válido!"
else
  puts "CPF inválido!"
end