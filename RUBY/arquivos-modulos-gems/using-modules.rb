# require "./arquivos-modulos-gems/6-modules" # Busca no diretorio raiz
require_relative "6-modules" # Pega no diretorio atual

puts LengthConversion.miles_to_centimeters(5400)
puts fn() # Tambem é possivel usar funções vindas de outros arquivos