Rails.application.routes.draw do
  get 'authors/new'
  get 'authors/index'
  get 'authors/show'
  get 'chapters/new'
  get "sessions/new"
  get "/home", to: "static_pages#home"
  get "/signup", to: "users#new"
  root "static_pages#home"
  post "/signup",  to: "users#create"
  get  "/login", to: "sessions#new"
  post  "/login", to: "sessions#create"
  delete  "/logout", to: "sessions#destroy"
  resources :users
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :mangaks
  resources :mangaks do
    resources :chapters
  end
  resources :authors
end
