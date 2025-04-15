require "active_record"

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "brugge-matheus",
  password: "291005",
  database: "estoque",
)

# Criando o schema da tabela
ActiveRecord::Schema.define do
  create_table :categories do |t|
    t.string :name
    t.string :url
  end

  create_table :products do |t|
    t.string :name
    t.integer :category_id
    t.integer :stock_quantity, default: 0
  end
end

# Definição dos modelos
class Category < ActiveRecord::Base
  has_many :products
end

class Product < ActiveRecord::Base
  belongs_to :category

  def decrease_stock(amount)
    if self.stock_quantity >= amount
      self.stock_quantity -= amount
      self.save
    else
      puts "Não há estoque suficiente para realizar a operação"
    end
  end

  def increase_stock(amount)
    self.stock_quantity += amount
    self.save
  end
end

# Utilizando os modelos
category = Category.create(name: "Eletronicos")

product1 = category.products.create(name: "Smartphone", stock_quantity: 5)
product2 = category.products.create(name: "Notebook", stock_quantity: 13)

product1.decrease_stock(3)
product2.increase_stock(3)

# Recuperando todos os produtos
allProducts = Product.all
allProducts.each do |product|
  puts "Nome: #{product.name}, Categoria: #{product.category.name}, Estoque #{product.stock_quantity} "
end
