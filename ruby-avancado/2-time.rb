puts Time.new
puts Time.now

puts Time.new(2023)
dateTime = Time.new(2005, 10, 29, 18, 59, 20)

puts dateTime.year
puts dateTime.month
puts dateTime.day
puts dateTime.hour
puts dateTime.min
puts dateTime.sec

# time.wday
# 0 - Domingo
# 1 - Segunda
# 2 - Terça
# 3 - Quarta
# 4 - Quinta
# 5 - Sexta
# 6 - Sabado
puts dateTime.wday # Retorna o numero do dia da semana

# Verifica se era um dia da semana especifico
puts dateTime.sunday?
puts dateTime.saturday?
puts dateTime.wednesday?

#60 segundos em um minuto
#60 minutos em uma hora
#24 horas em um dia
#30 dias

puts start_of_year + (60 * 60 * 24 * 30) # Resulta em 30 dias

puts start_of_year + (60 * 60 * 24 * 45) # Resulta em 45 dias
