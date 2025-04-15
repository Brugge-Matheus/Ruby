# Utilizando metodo scan
string = "Lorem ipsum amet dolor sit amet dallas"
pattern = /amet/

puts string.scan(pattern)

string = "Lorem ipsum amet 10 dolor 20 sit 30 amet dallas"
puts string.scan(/\d+/).length
result = string.scan(/\d+/).join(", ")

puts result
