class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    %w[title body] # Lista de atributos permitidos para pesquisa
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
