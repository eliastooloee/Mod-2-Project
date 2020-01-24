Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rocks
  post '/users/new', to:"users#create"
  resources :users
  resources :locations
  
  post '/rocks/new', to:"rocks#create"
  get '/rocks/:id/edit', to:"rocks#update"
  post '/rocks/:id/edit', to:"rocks#update"
  post '/rocks/:id/destroy', to:"rocks#destroy"
  root to: "rocks#index"
  get '/signup', to:"users#new", as: "signup"


  get '/login', to: "auth#login", as: "login"
  post '/login', to: "auth#authenticate"

  get '/logout', to: "auth#logout"
end
