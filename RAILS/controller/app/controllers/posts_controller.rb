class PostsController < ApplicationController
  def index
    render json: {message: "Listagem de todos os posts"}
  end

  def show
    render json: {message: "Deatalhes do post #{params[:id]}"}
  end

  def new
    render json: {message: "Formulario de criação de post"}
  end

  def create
    render json: {message: "Criando um novo post"}
  end

  def edit
    render json: {message: "Formulario para edição do post #{params[:id]}"}
  end

  def update
    render json: {message: "Atualizando um post"}
  end

  def destroy
    render json: {message: "Deletando o post #{params[:id]}"}
  end

  def comments 
    render json: {message: "Listando todos os comentarios"}
  end

  def show_comment 
    render json: {message: "Listando o comentário #{params[:comment_id]} que pertence ao post #{params[:id]}"}
  end

  def create_comment
    render json: {message: "Criando um novo comentário"}
  end
end
