# Laços de repetição

# While
i = 0
while i <= 5
  puts i
  i += 1
end

# Exemplo
puts 'Digite o nome do filme:'
movieName = gets.chomp
qtdRating = 0
totalRating = 0
rating = 0
average = 0

while rating != -1
  puts 'Digite a nota do filme:'
  rating = gets.chomp.to_f

  if rating != -1
    qtdRating += 1
    totalRating += rating
    average = (totalRating / qtdRating)
  end
end

puts "A média total do filme #{movieName.downcase.capitalize} é #{average.round(1)}"
# For