# Utilizando argumentos - Se trata de valores passados na chamada da execução de um arquivo
ARGV.each { 
  |arg| 
  
  puts arg 
}

# Utilizando o argumentos para adicionar valores a um arquivo
file_path = "./arquivos-modulos-gems/courses.txt"
File.open(file_path, 'a') do |file|
  ARGV.each do |course|
    file.puts course
  end
end