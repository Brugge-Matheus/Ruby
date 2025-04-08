require  'csv'

# Escrevendo dados em CSV
CSV.open('arquivos-modulos-gems/data/example.csv', 'w') do |csv|
  csv << ["Nome", "Idade", "Cidade"]
  csv << ["Matheus", 19, "São José dos Pinhais"]
end

# Lendo dados em CSV
CSV.foreach('arquivos-modulos-gems/data/example.csv', headers: true) do |row|
  nome = row["Nome"]
  idade = row["Idade"]
  cidade = row["Cidade"]
  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end