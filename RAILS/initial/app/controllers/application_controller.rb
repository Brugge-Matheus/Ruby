class ApplicationController < ActionController::Base
  before_action :set_query
  allow_browser versions: :modern

  def set_query
    @query = Post.ransack(params[:q])
  end
end
