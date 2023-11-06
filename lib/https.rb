require 'net/http'
require 'uri'

uri = URI.parse('https://reqres.in/api/users')

https = Net::HTTP.new(uri.host, uri.port)
https.use_ssl = true

response = https.get(uri.request_uri)

puts "Código de resposta: #{response.code}"
puts "Mensagem de resposta: #{response.message}"
puts "Corpo da resposta: "
puts response.body

