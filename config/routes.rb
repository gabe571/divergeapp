Rails.application.routes.draw do
  resources :games
  resources :purchases
  resources :reviews
  resources :game_studios
  resources :users
  
  root to: "users#index"
  get 'create', to: "users#new"
  get '/login', to: "auth#login", as: "login" 
  post '/login', to: "auth#verify_username"
  get '/logout', to: "auth#logout", as: "logout"
  post '/users/new', to: "auth#verify_username"
  post '/purchases', to: "purchases#create"
  # get '/purchases/:id/edit', to: "purchase#edit", as: "edit_purchase"
  post 'purchases/:id', to: "purchases#update", as:"update_purchases"
  # get '/reviews/new/:id', to: "review#new", as: "new_review"
  post 'reviews/:id', to: "reviews#create", as: "update_review"
  post'reviews/new', to: 'reviews#create', as: "create_review"
  # get '/reviews/:id/edit', to "review#edit", as "edit_review"


end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
