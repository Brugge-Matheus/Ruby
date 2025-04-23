class WelcomeController < ApplicationController
  before_action :initialize_products, only: [:index]

  def index
    @produtos = session[:products]
    puts "Produtos: #{@produtos.inspect}"
  end

  def create_product
    product = { :name => params[:name], :price => params[:price] }
    session[:products] << product

    redirect_to root_path
  end

  private

  def initialize_products
    session[:products] ||= []
    @products = session[:products]
  end
end
