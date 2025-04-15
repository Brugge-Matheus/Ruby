require "pg"

# Configurações de conexão com o banco de dados
conn = PG.connect(
  dbname: "fliperama",
  user: "postgres",
  password: "123456",
  host: "localhost",
  port: 5432,
)

delete_query = "DELETE FROM games WHERE id = 1"

conn.exec(delete_query)

puts "Dados excluidos com sucesso"

conn.close
