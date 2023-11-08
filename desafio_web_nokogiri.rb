#aparecer o conteudo de 'P' em vez de 'H1'

require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443)
https.use_ssl = true
response = https.get('/')

if response.code == '200'
  doc = Nokogiri::HTML(response.body)

  paragraphs = doc.css('p')
  n = 1
  puts "Parágrafos encontrados:"
  if paragraphs.any?

    paragraphs.each do |p|
      puts "#{n}° parágrafo: #{p.content}"
      n += 1
      puts ""
    end
  else
    puts "Nenhum parágrafo encontrado"
  end
end

