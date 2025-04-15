require "pg"

# Conexão com o banco de dados
connection = PG.connect(
  host: "localhost",
  user: "brugge-matheus",
  dbname: "db_exemplo",
  password: "291005",
  port: 5432,
)

# Lendo todos os dados
query = "SELECT * FROM games"

begin
  result = connection.exec(query)

  # Itera sobre as linhas
  result.each do |game|
    puts "#{game["id"]} #{game["name"]} #{game["score"]}"
  end
ensure
  connection.close if connection
end
