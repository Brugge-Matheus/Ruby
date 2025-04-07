# Escrevendo em arquivos
file_path = "./arquivos-modulos-gems/novo.txt"
# File.open(file_path "w") do |file|
#   file.puts "Escrevendo em arquivo de texto"
#   file.write "Hello World"
#   file.puts "Olá mundo"
# end

# Escrevendo baseado no input do usuario - w (sobrescreve os dados)
# File.open(file_path, 'w') do |file|
#   puts 'Qual curso deseja definir no arquivo?:'
#   course = gets.chomp

#   file.write course
# end

# Escrevendo baseado no input do usuario - a (append, adiciona novos itens ao arquivo)

File.open(file_path, 'a') do |file|
  puts 'Qual curso deseja definir no arquivo?:'
  course = gets.chomp

  file.puts course
end