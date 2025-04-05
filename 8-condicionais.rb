a = 10
b = 20

if a > b
  puts "#{a} maior que #{b}"
else
  puts "#{b} maior que #{a}"
end

# Exemplo mais completo
puts 'Digite o nome do filme'
name = gets.chomp

puts 'Digite o ano de lançamento do filme'
yearLauncher = gets.chomp.to_i

puts 'Digite a nota de classificação do filme'
classification = gets.chomp.to_i

if yearLauncher >= 2015 and classification >= 7
  puts "#{name.downcase.capitalize} se trata de um bom filme, pode assistir"
elsif yearLauncher >= 2010 && yearLauncher < 2015 && classification > 5 && classification < 7
  puts "#{name.downcase.capitalize} se trata de um filme mediano, assista por sua conta e risco!"
else
  puts "#{name.downcase.capitalize} Se trata de um filme ruim, não assita"
end