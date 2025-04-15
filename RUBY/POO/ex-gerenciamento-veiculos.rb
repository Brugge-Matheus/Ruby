class Veiculo
  attr_accessor :placa, :marca

  def initialize(placa, marca)
    @placa = placa
    @marca = marca
  end

  def detalhes
    puts "Placa: #{@placa}"
    puts "Marca: #{@marca}"
  end
end

class Carro < Veiculo
  attr_accessor :portas

  def initialize(placa, marca, portas)
    super(placa, marca)
    @portas = portas
  end

  def detalhes
    super
    puts "Número de Portas: #{@portas}"
  end
end

class Moto < Veiculo
  attr_accessor :cilindrada

  def initialize(placa, marca, cilindrada)
    super(placa, marca)
    @cilindrada = cilindrada
  end

  def detalhes
    super
    puts "Cilindrada: #{@cilindrada}"
  end
end

def exibir_detalhes(veiculo)
  puts veiculo.detalhes
end

carro = Carro.new("ABC123", "Toyota", 4)
moto = Moto.new("XYZ123", "Honda", 250)

exibir_detalhes(carro)
exibir_detalhes(moto)
