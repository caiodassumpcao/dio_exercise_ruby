# Codigo que imprime uma frase falando o numero de whastapp.
# Utilize expressões regulares (match) e confira se esse whatsapp é do tipo formato (99) 9 9999-9999

def verificacao_wpp(numero)

  formato_wpp = /\A\(\d{2}\) \d \d{4}-\d{4}\z/

  if numero.match(formato_wpp)
    puts "Este número de Whatsapp está no formato válido: #{numero}"
  else
    puts "Este número de Whatsapp não está no formato válido: #{numero}"
  end
end

verificacao_wpp("(11) 9 9999-9999")
verificacao_wpp("(99) 1 2345-6789")
verificacao_wpp("11999999999")
verificacao_wpp("(22) 3 45678901")

def formatar_numero(numero)

  # Remove qualqier caracter não numérico
  numero = numero.gsub(/\D/, '')

  if numero.length == 11
    numero_formatado = "(#{numero[0..1]}) #{numero[2]} #{numero[3..6]}-#{numero[7..10]}"
    puts "Número formatado: #{numero_formatado}"
  else
    puts "Não é possivel formatar este número, digite o numero novamente"
  end
end

formatar_numero("11987654321")
formatar_numero("99123456789")
formatar_numero("1234567890")