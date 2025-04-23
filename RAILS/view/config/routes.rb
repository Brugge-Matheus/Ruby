Rails.application.routes.draw do
  root "welcome#index"
  post "create_product", to: "welcome#create_product"
end
