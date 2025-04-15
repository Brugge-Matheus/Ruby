# Diretorio atual
puts Dir.pwd

# Criando diretorios
# puts Dir.mkdir 'teste_diretorio'

# Lista arquivos e pastas
puts Dir.glob '*'

# Filtrando arquivos listados
puts Dir.glob '*.rb'

# Navegando entre diretorios
Dir.chdir 'teste'
Dir.pwd