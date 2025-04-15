require "active_record"

# Configurações do banco de dados
ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "brugge-matheus",
  password: "291005",
  database: "db_exemplo",
)

# Criando uma tabela
ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :nome
    t.string :email
  end
end

# Definição de um modelo
class User < ActiveRecord::Base
end

user = User.new(nome: "Matheus", email: "matheusmilczwski@gmail.com")
user.save

# Recuperando os dados
users = User.all # SELECT * FROM users
users.each do |user|
  puts user
end
