puts 'informe o nome do filme:'
name = gets.chomp
  
puts 'informe o ano de lançamento'
yearnLauncher = gets.chomp.to_i
  
puts 'Informe o preço do filme:'
price = gets.chomp.to_i

# Concatenação e exibição dos valores
puts 'Nome do filme ' + name.to_str
puts 'Ano do lançamento: ' + yearnLauncher.to_s

# Concatenação usando #{}
puts "Nome do filme #{name}"
puts "Ano do lançamento do filme #{yearnLauncher}"
puts "Preço do filme #{price}"

# Sring multilinha
puts <<~MULTILINE_STRING
    Nome do filme #{name}
    Ano do lançamento do filme #{yearnLauncher}
MULTILINE_STRING
  
  