hash = Hash.new()
#puts hash.class


# Criando um Hash
movies = {
  'name' => 'Avatar',
  'year' => 2023
}
#puts movies

movies2 = {
  :name => 'Avatar',
  :year => 2023
}
#puts movies2

# Iterando sobre hashs
#puts movies.keys
#puts movies.values

movies.each do |index, value|
  #puts "#{index}: #{value}"
end

for index, movie in movies
 #puts "#{index}: #{movie}"
end

i = 0
while i < movies.length
  #puts "#{movies.keys[i]}: #{movies.values[i]}"

  i += 1
end


# Operações usando hash
person = {
  :name => 'Matheus Brugge',
  :age => 19,
  :jobs => {
      :freelancer => 'Laravel',
      :Diprotec => 'Ruby on Rails'
  }
}

# Metodos uteus
puts person.key?(:name)
puts person.has_value?('Laravel') 
puts person[:name]
puts person.size
puts person.length
puts person.to_a # Xonverte para array
puts person.min
puts person.max
puts person.fetch(:name)

# Adicionar novos itens
person.store(:genre, 'Man') # Adiciona uma chave
person.fetch(:jobs).store(:red, 'PHP')
puts person

# Excluir uma chave
person.store(:teste, 'teste') 
person.delete(:teste) # Delete uma chave
puts person

person.clear() # Limpa o hash
puts person