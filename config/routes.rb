Rails.application.routes.draw do
  get 'likes/:post_id/create', to: 'likes#create'
  get 'likes/:post_id/destroy', to: 'likes#destroy'

 
  
  post "users/:id/update", to: "users#update"
  get "users/:id/edit", to: "users#edit"
  post "users/create", to: "users#create"
  get "signup", to: "users#new"
  get "users/index", to: "users#index"
  get "users/:id", to: "users#show"
  post 'login', to: 'users#login'
  get 'logout', to: 'users#logout'
  get 'login', to: 'users#login_form'
  get "users/:id/likes", to: "users#likes"
  get "posts/index", to: "posts#index"
  get "posts/new", to: "posts#new"
  get "posts/:id", to: "posts#show"
  post "posts/create", to: "posts#create"
  get "posts/:id/edit", to: "posts#edit"
  post "posts/:id/update", to: "posts#update"
  post "posts/:id/destroy", to: "posts#destroy"
  
  get "/", to: "home#top"
  get "about", to: "home#about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
