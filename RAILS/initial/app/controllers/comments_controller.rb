class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @comment = @post.comments.create(comments_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comentário criado com sucesso"

      # redirect_to post_path(@post)
      redirect_to @post
    else
      flash[:alert] = "Erro ao criar comentario no post #{@post.id}"

      redirect_to post_path(@post)
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  def update
    @comment = @post.comments.find(params[:id])

    respond_to do |format|
      if @comment.update(comments_params)
        format.html { redirect_to post_url(@post), notice: "Comentário atualizado com sucesso" }
      else
        format.html { redirect_to post_url(@post, notice: "Erro ao atualizar comentário") }
      end
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comments_params
    params.require(:comment).permit(:body)
  end
end
