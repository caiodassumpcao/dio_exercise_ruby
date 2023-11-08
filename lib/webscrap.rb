require 'nokogiri'
require 'net/http'

# Realizando umma única solicitação HTTPS
https = Net::HTTP.new('example.com', 443)
https.use_ssl = true
response = https.get('/')

# Verificando se a solicitação foi bem sucedida
if response.code == '200'
  doc = Nokogiri::HTML(response.body)

  # Printando Titulo
  h1 = doc.at('h1')
  if h1
    puts "Título: #{h1.content}"
  else
    puts "Elemento h1 não encontrado na página."
  end

  # Printando links
  links = doc.css('a')

  puts "Links encontrados:"
  links.each do |link|
    puts link['href']
  end


  # Extrair info de tabelas
  table = doc.css('table')

  table.css('tr').each do |row|
    cells = row.css('td')

    puts cells[0].text.strip if cells[0]
  end
end




