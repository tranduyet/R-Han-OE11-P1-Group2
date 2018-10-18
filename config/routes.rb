Rails.application.routes.draw do
  get "/home", to: "static_pages#home"
  root "static_pages#home"
  post "/signup",  to: "users#create"
  resources :users
end
