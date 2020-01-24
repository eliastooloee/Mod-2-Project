Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rocks
  resources :users
  resources :locations

  post '/users/new', to:"users#create"
  get '/signup', to:"users#new", as: "signup"
  
  post '/rocks/new', to:"rocks#create"
  post '/rocks/:id/edit', to:"rocks#update"
  post '/rocks/:id/destroy', to:"rocks#destroy"
  root to: "rocks#index"
  


  get '/login', to: "auth#login", as: "login"
  post '/login', to: "auth#authenticate"

  get '/logout', to: "auth#logout"
end
