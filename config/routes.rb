Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vehicles
  resources :storages
  get "/how_it_works", to: 'pages#how_it_works'
  get "/contact", to: 'pages#contact'
  get "/send_email", to: 'pages#send_email'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
