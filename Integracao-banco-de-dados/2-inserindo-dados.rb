require "pg"

connection = PG.connect(
  host: "localhost",
  user: "brugge-matheus",
  password: "291005",
  dbname: "db_exemplo",
  port: 5432,
)

data = [
  { name: "Resident Evil 4", score: 9.5 },
  { name: "Spider Man 2", score: 9.0 },
]

data.each do |value|
  connection.query("
    INSERT INTO games (name, score)
    VALUES ('#{value[:name]}', #{value[:score]})")
end

connection.close
