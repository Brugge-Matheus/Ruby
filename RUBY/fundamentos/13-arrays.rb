# Array são Vetores
movies = []
#puts movies.class

#movies = Array.new(1, 2, 3, 4, 5)
movies.class

movies = ['Homem-Aranha', 'Carros', 'Mascara']
#puts movies

movies = Array.new(1, 2)
#puts movies

# Operações em arrays

# Indexação e atribuição
movies = ['Homem-Aranha', 'Carros', 'Mascara']
puts movies[1]
puts movies[1,2]
movies[3] = 'Top Gun'
movies << 'Homem de aço'

# puts movies

# Metodos uteis
puts movies.length
puts movies.first
puts movies.last
movies.append('Como treinar seu dragão') # Adiciona um item por ultimo no array
puts movies.sort() # Ordena o array
movies.shuffle() # Embaralha o array

#puts movies

# Iterando sobre arrays

movies.each{ |value| puts "#{value}"}

movies.each do |value|
    puts "#{value}"
end

movies.each_with_index do |value, index|
    puts "#{index}: #{value}"
end