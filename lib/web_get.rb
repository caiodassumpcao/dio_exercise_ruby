# Requisições HTTP

require 'net/http'

# URL corrigida
exemplo = Net::HTTP.get('example.com', '/index.html')

File.open('example.html', 'w') do |file|
  file.puts(exemplo)
end
