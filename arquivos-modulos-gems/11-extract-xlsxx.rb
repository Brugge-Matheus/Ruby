require "roo"

# Nome do arquivo da planilha
planilha = Roo::Excelx.new("data/Planilha1.xlsx")  # Substitua pelo nome do seu arquivo XLSX

# Nome da planilha dentro do arquivo (geralmente é "Sheet1" por padrão)
planilha.default_sheet = planilha.sheets.first

# Percorre as linhas da planilha e extrai os dados
(2..planilha.last_row).each do |linha|
  nome = planilha.cell(linha, 1)
  idade = planilha.cell(linha, 2)
  cidade = planilha.cell(linha, 3)

  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end
