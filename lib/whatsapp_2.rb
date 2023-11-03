require 'mysql2'

def verificacao_wpp(numero)
  formato_wpp = /\A\(\d{2}\) \d \d{4}-\d{4}\z/
  numero.match(formato_wpp) ? true : false
end

def formatar_num(numero)
  numero = numero.gsub(/\D/, '')

  if numero.length == 11
    numero_formatado = "(#{numero[0..1]}) #{numero[2]} #{numero[3..6]}-#{numero[7..10]}"
    puts "Número formatado: #{numero_formatado}"
  else
    puts "Não foi possível formatar o número"
  end
end

puts "Digite seu número de Whatsapp:"
numero = gets.chomp
formatar_num(numero)

if verificacao_wpp(numero)
  puts "Número de WhatsApp válido: #{numero}"
  formatar_numero(numero)
else
  puts "Número de WhatsApp não está no formato válido."
end


