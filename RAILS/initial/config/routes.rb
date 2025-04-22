Rails.application.routes.draw do
  # root "home#index" # Define a rota raiz '/'
  get "student/list"
  get "home", controller: "home", action: "index", as: "home" # Primeira forma de criar um controller
  get "home-2", to: "home2#index" # Segunda forma de criar um controller

  get "estudantes", to: "student#list", as: "studies"
end
