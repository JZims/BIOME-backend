Rails.application.routes.draw do
  resources :users, only: [:create]
  
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"


  resources :beverages
  post "/stock", to: "beverages#index"
  
  resources :inventories
  post "/inventory", to: "inventories#create"
  
end
