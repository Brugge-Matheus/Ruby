# Metodos privados so podem ser chamados dentro da propria classe, não é possivel instanciar

class Product
  attr_reader :price

  def initialize(name, price, discount)
    @name = name
    @price = price
    @discount = discount
  end

  private

  def apply_discount(discount_percentage)
    @price -= (@price * discount_percentage / 100)
  end

  public

  def get_discount
    apply_discount(20)
  end

  public

  def get_infos
    "O produto #{@name} recebey #{@discount}% de desconto e ficou #{@price}"
  end
end

product1 = Product.new("Galaxy S23", 1500, 20)

puts product1.price
product1.get_discount
puts product1.price

puts product1.get_infos
