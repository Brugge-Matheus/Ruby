require "date"

# Utilizando o objeto date
puts Date.new(2020)
puts Date.new(2020, 5)
puts Date.new(2020, 5, 25)

puts Date.today

# Manipulando os valores
birthdate = Date.new(2025, 10, 29)
puts birthdate.class
puts birthdate.year
puts birthdate.month
puts birthdate.day

# data.wday
# 0 - Domingo
# 1 - Segunda
# 2 - Terça
# 3 - Quarta
# 4 - Quinta
# 5 - Sexta
# 6 - Sabado
puts birthdate.wday # Retorna o numero do dia da semana

# Verifica se era um dia da semana especifico
puts birthdate.sunday?
puts birthdate.saturday?
puts birthdate.wednesday?
