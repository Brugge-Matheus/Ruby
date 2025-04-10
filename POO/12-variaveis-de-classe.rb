class Produto
  @@contador = 0

  def initialize(nome)
    @nome = nome
    @@contador += 1
  end

  def self.total_produtos
    @@contador
  end
end

p1 = Produto.new("Camisa")
p2 = Produto.new("Calça")

puts Produto.total_produtos  # => 2
p p1
p p2
