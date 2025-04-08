# URI E HTTP
require 'uri'
require 'net/http'
require 'json'

url = URI.parse('https://www.example.com')
puts url
puts url.class

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = (url.scheme == 'https')

request = Net::HTTP::Get.new(url.request_uri)
response = http.request(request)

if response.is_a?(Net::HTTPSuccess)
  puts "Status: #{response.code} #{response.message}"
else
  puts "A requisição falhou com status #{response.code}"
end

# Requisição GET
url = URI.parse("https://jsonplaceholder.typicode.com/posts/1")
response = Net::HTTP.get_response(url)

puts response.code           # "200"
puts response.message        # "OK"
puts response.body           # Conteúdo do post

# Requisição POST
url = URI.parse("https://jsonplaceholder.typicode.com/posts")
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = (url.scheme == 'https')

request = Net::HTTP::Post.new(url.request_uri)
request["Content-Type"] = "application/json"
request.body = {
  title: "foo",
  body: "bar",
  userId: 1
}.to_json

response = http.request(request)
puts response.code
puts response.body


# Put
url = URI("https://jsonplaceholder.typicode.com/posts/1")
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Put.new(url.request_uri)
request["Content-Type"] = "application/json"
request.body = {
  id: 1,
  title: "novo título",
  body: "novo conteúdo",
  userId: 1
}.to_json

response = http.request(request)
puts response.code
puts response.body



# Delete
url = URI("https://jsonplaceholder.typicode.com/posts/1")
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Delete.new(url.request_uri)

response = http.request(request)
puts response.code
puts response.body  # normalmente vazio
