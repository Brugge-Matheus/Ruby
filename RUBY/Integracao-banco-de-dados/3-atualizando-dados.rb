require "pg"

# Configurações de conexão com o banco de dados
conn = PG.connect(
  dbname: "fliperama",
  user: "postgres",
  password: "123456",
  host: "localhost",
  port: 5432,
)

# ID do registro que você deseja atualizar
id_do_registro = 1  # Substitua pelo ID do registro que você deseja atualizar

# Novos valores que você deseja atribuir ao registro
new_name = "Mortal Kombat 1"
new_year = 2023
new_score = 8.5
# Crie a instrução SQL de atualização
update_query = "UPDATE jogo SET name = '#{new_name}',
 year = #{new_year}, score = #{new_score} WHERE id = #{id_do_registro}"

# Executa a instrução SQL de atualização
conn.query(update_query)

puts "Registro atualizado com sucesso!"

# Fecha a conexão com o banco de dados
conn.close
