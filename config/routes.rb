Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }
=======
  devise_for :users
  get 'authors/new'
  get 'authors/index'
  get 'authors/show'
  get 'chapters/new'
>>>>>>> remote_authauthentication
  get "sessions/new"
  get "/home", to: "static_pages#home"
  root "static_pages#home"
<<<<<<< HEAD
=======
  post "/signup",  to: "users#create"
  get  "/login", to: "sessions#new"
  post  "/login", to: "sessions#create"
  delete  "/logout", to: "sessions#destroy"
>>>>>>> remote_authauthentication
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :mangaks do
    resources :chapters
  end
  resources :admin
    resources :users do
  end
  resources :authors
  resources :genres
  resources :relationships, only: [:create, :destroy]
  resources :comments
end
