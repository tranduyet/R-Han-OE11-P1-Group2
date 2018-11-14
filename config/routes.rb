Rails.application.routes.draw do
  get 'user/show'
  get 'admin/index'
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  get 'authors/new'
  get 'authors/index'
  get 'authors/show'
  get 'chapters/new'
  get "sessions/new"
  get "/home", to: "static_pages#home"
  root "static_pages#home"
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
