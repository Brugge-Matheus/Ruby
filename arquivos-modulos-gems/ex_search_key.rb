puts "\nOque você deseja fazer?"
puts "
    1 - Pesquisar arquivos pelo nome \n 
    2- Pesquisar arquivos pelo conteúdo
"
option = gets.chomp.to_i

case option
    when 1
        # Pesquisa palavras em nomes de arquivos
        def search(key)
            files = Dir.glob("data/*.txt")
            response = Hash.new

        files.each_with_index do |file, index|
            if file.include?(key)
            response[index + 1] = file
            end
        end

        if response.empty?
            return "Nenhum arquivo encontrado"
        end

            return response
        end

        puts "\nBuscar palavras em nomes de arquivos"
        puts "\nDigite uma palavra para pesquisar:"
        key = gets.chomp

        files = search(key)
        puts "\nO(s) arquivos possuem a palavra fornecida no nome:"

        if files.is_a?(Hash)
            files.each do |index, file|
                puts "#{file}"
            end
        else
            puts files
        end
        
    when 2
        # Pesquisa palavras no conteudo dos arquivos
        def searchInFile(key)
            files = Dir.glob("data/*.txt")
            response = Hash.new

            files.each_with_index do |file, index|
                File.foreach(file) do |row|
                    if row.include?(key)
                        response[index + 1] = file
                    end
                end
            end

            if response.empty?
                return "Nenhum arquivo encontrado"
            end

            return response
        end

        puts "\nBuscar palavras no conteudo de arquivos"
        puts "\nDigite uma palavra para pesquisar:"
        key = gets.chomp

        files = searchInFile(key)
        puts "\nO(s) arquivos possuem a palavra fornecida no conteudo:"

        if files.is_a?(Hash)
            files.each do |index, file|
                puts "#{file}"
            end
        else
            puts files
        end
        
        
    else
        puts 'Opção não identificada'
end