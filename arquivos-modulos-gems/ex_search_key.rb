puts "\nO que você deseja fazer?"
puts "
    1 - Pesquisar arquivos pelo nome\n
    2 - Pesquisar arquivos pelo conteúdo
"
option = gets.chomp.to_i

case option
when 1
  # Pesquisa palavras em nomes de arquivos
  def search(key)
    files = Dir.glob("data/*.txt")
    response = {}

    files.each_with_index do |file, index|
      if file.include?(key)
        response[index + 1] = file
      end
    end

    return "Nenhum arquivo encontrado" if response.empty?
    response
  end

  puts "\nBuscar palavras em nomes de arquivos"
  print "\nDigite uma palavra para pesquisar: "
  key = gets.chomp

  files = search(key)
  puts "\nO(s) arquivos possuem a palavra fornecida no nome:"

  if files.is_a?(Hash)
    files.each do |index, file|
      puts file
    end
  else
    puts files
  end

when 2
  # Pesquisa palavras no conteúdo dos arquivos
  def search_in_file(key)
    files = Dir.glob("data/*.txt")
    response = {}

    files.each_with_index do |file, index|
      File.foreach(file) do |row|
        if row.include?(key)
          response[index + 1] = file
          break
        end
      end
    end

    return "Nenhum arquivo encontrado" if response.empty?
    response
  end

  puts "\nBuscar palavras no conteúdo de arquivos"
  print "\nDigite uma palavra para pesquisar: "
  key = gets.chomp

  files = search_in_file(key)
  puts "\nO(s) arquivos possuem a palavra fornecida no conteúdo:"

  if files.is_a?(Hash)
    files.each do |index, file|
      puts file
    end
  else
    puts files
  end

else
  puts "Opção não identificada"
end
