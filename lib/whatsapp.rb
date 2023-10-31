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