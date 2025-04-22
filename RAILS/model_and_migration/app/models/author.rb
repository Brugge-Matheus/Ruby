class Author < ApplicationRecord
  has_many :articles
  has_one :biograph, dependent: :destroy
end
