# Laços de repetição

# While
i = 0
while i <= 5
  puts i
  i += 1
end

# Exemplo
# puts 'Digite o nome do filme:'
# movieName = gets.chomp
# qtdRating = 0
# totalRating = 0
# rating = 0
# average = 0

# while rating != -1
#   puts 'Digite a nota do filme:'
#   rating = gets.chomp.to_f

#   if rating != -1
#     qtdRating += 1
#     totalRating += rating
#     average = (totalRating / qtdRating)
#   end
# end

# puts "A média total do filme #{movieName.downcase.capitalize} é #{average.round(1)}"

# For
for i in 1..5
  puts i
end

object = {
  name: 'Matheus',
  age: 19
}


for index, value in object
 puts "#{index}: #{value}"
end

# Each - usado para iterar sobre vetores e arvores
(1..10).each do |i|
  puts i
end

# Exemplo completo
moviesList = ['O mascara', 'Mario', 'Homem-aranha', 'Batman']
moviesList.each do |movie|
  puts movie
end

# Utilizando o break - Cancela o loop
moviesList.each do |movie|
  puts movie
  break if movie == 'Homem-aranha'
end

# Utilizando o next (continue) - Pula para a proxima iteração
moviesList.each do |movie|
  next if movie == 'Mario'
  puts movie
end

# Exemplo
# puts 'Digite o nome de um filme:'
# movieName = gets.chomp

# puts 'Digite quantas avaliações deseja inserir:'
# movieRating = gets.chomp.to_i

# sum = 0
# movieRating.times do
#   puts 'Digite a nota do filme:'
#   note = gets.chomp.to_f

#   sum += note
# end

# average = (sum / movieRating)

# puts "A nota do filme #{movieName} é %.2f" %average


# Sequencia de Fibonacci
puts "Digite um número para iniciar a sequência de Fibonacci:"
oldNum = gets.chomp.to_i
num = oldNum - 1 
count = 0

puts "Sequência de Fibonacci:"
while count < 6
  result = num + oldNum
  puts result
  num = oldNum
  oldNum = result
  count += 1
end

