Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "tasks", to: "tasks#index", defaults: {format: 'json'}
  get "task/:id", to: "tasks#show", defaults: {format: 'json'}

  resources :posts

  # As rotas dentro de member são rotas relacionadas a um recurso específico, ou seja, elas exigem um ID do recurso pai (post_id) na URL
  # Prefixo da rota: /posts/:id/...
  resources :posts do 
    member do 
      get "comments", to: "posts#comments"
      get "comments/:comment_id", to: "posts#show_comment"
      post "create_comment", to: "posts#create_comment"
    end
  end

  # Essas rotas não estão aninhadas a um recurso específico (ou seja, não têm :id do post como prefixo). 
  # Prefixo da rota: /posts/comments, não /posts/:id/comments.
  # resources :posts do 
  #   get "comments", to: "posts#comments"
  #   get "comments/:comment_id", to: "posts#show_comment"
  #   post "create_comment", to: "posts#create_comment"
  # end

end
