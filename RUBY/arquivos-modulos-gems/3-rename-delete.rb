file_path = "./arquivos-modulos-gems/arquivo.txt"

# Renomeia um arquivo
# new_file_path = "./arquivos-modulos-gems/novo_arquivo.txt"
# File.rename(file_path, new_file_path)

if File.exist?(file_path)
  File.delete(file_path)
else
  puts 'Arquivo nao existe'
end