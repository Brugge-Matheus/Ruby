puts 'Digite sua altura:'
altura = gets.chomp.to_f

puts 'Digite seu peso:'
peso = gets.chomp.to_f

imc = (peso / (altura / 100) ** 2).floor(2)

if imc > 24
  puts 'Normal'
elsif imc < 24
  puts 'anormal'
end