class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, uniqueness: true
  validates :stock, {minimum: 1, maximum: 20}
end
