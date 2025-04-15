name = 'Titulo 1'
name2 = 'Titulo 2'

description = <<Text
  Essa é uma descricao
Text

#Indexação
puts name[1]
puts name[0,4] # Pega 4 caracteres a partir da posição 0
puts name[0..4] # Vai do índice 0 até o índice 4, inclusive o 4
puts name.slice(0)
puts name.slice(0,3)

# Quebrando uma string transformando em um array
string = 'cidade1,cidade2,cidade3'
stringToArray = string.split(',')
print (stringToArray)

# Quebrando uma string em caracteres
stringToChar = string.chars
print (stringToChar)

# Conta ocorrencia de caracteres
puts string.count(',')

# Maiusculo e Minusculo
puts string.upcase # Tudo em maiusculo
puts string.downcase # Tudo em minusculo

puts string.capitalize # Primeira letra em maisculo
puts string.swapcase # Primeira letra em minusculo e o resto em maiusculo

# Identificar o indice em uma string
puts string.index('1')

# Alterar palavras
puts string.gsub('1', '10')

#Outras operações
puts "Ruby".center(10, '-') # Centraliza a string no meio, define qual o tamanho e preenche os espaços em branco com o caracter definido
puts "=" * 20 # Repete a string 20 vezes
puts string.include?('2') # Verifica se um item existe dentro de uma string, retorna um boolean
puts "   Ruby".lstrip # Remove os espaços em branco a esquerda
puts "Ruby   ".rstrip # Remove os espaços em branco a direita
puts "    Ruby    ".strip # Remove os espaços em branco em ambos os lados
puts ['teste', 'teste'].join('@') # Junta uma lista por um operador definido
print ('nome: Matheus'.split) # Transforma uma string em uma lista usando o separador ' '
