require 'mysql'

def verificacao_wpp(numero)
  formato_wpp = /\A\(\d{2}\) \d \d{4}-\d{4}\z/
  numero.match(formato_wpp) ? true : false
end

