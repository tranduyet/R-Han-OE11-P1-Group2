Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }
  root "static_pages#home"
  get "sessions/new"
  get "/mangak_hot", to: "mangaks#mangak_hot"
  get "/home", to: "static_pages#home"
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
