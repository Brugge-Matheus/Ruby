require "date"

def calcular_data_entrega(data_envio, tempo_entrega_dias)
  data = Date.parse(data_envio)
  dias_uteis = 0
  # data.wday
  # 0: Domingo
  # 1: Segunda-feira
  # 2: Terça-feira
  # 3: Quarta-feira
  # 4: Quinta-feira
  # 5: Sexta-feira
  # 6: Sábado
  while dias_uteis < tempo_entrega_dias
    data += 1
    dias_uteis += 1 unless [0, 6].include?(data.wday) # se n for sábado ou domingo, incrementa
  end

  data.to_s
end

# Exemplo de uso da função
data_envio = "2023-11-01"
tempo_entrega_dias = 7
data_estimada_entrega = calcular_data_entrega(data_envio, tempo_entrega_dias)
puts "A data estimada de entrega é: #{data_estimada_entrega}"
