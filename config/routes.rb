Rails.application.routes.draw do
  resources :app_settings
  resources :take_actions
  resources :contacts
  resources :footers
  resources :headers
  resources :performances
  resources :services
  resources :abouts
  resources :stats, except: :destroy
  mount RailsAdmin::Engine => '/secret', as: 'rails_admin'
  devise_for :users
  resources :incoming_contacts
  resources :driver_applications
  resources :pages
  root to: 'pages#show' 

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
