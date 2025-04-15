# Primeira forma
file = File.open("./arquivos-modulos-gems/text.txt")
puts file
puts file.class

file.each do |row|
  puts row
end

# Alternativa 2
filePath = "./arquivos-modulos-gems/text.txt"
File.open(filePath, 'r') do |file|
  file.each_line { |row| puts row.strip unless row.strip.empty? } 
end