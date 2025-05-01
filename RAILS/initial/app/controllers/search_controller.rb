class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @posts = @query.result(distinct: true)
    puts @post.inspect
  end
end
