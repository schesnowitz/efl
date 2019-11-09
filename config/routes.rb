Rails.application.routes.draw do
  resources :stats, except: :destroy
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :incoming_contacts
  resources :driver_applications
  resources :pages
  root to: 'pages#show' 

  get 'edit_count', to: 'pages#edit_count'
  get 'edit_performance', to: 'pages#edit_performance' 
  get 'edit_top', to: 'pages#edit_top' 
  get 'edit_footer', to: 'pages#edit_footer' 
  get 'edit_contact', to: 'pages#edit_contact' 
  get 'edit_about', to: 'pages#edit_about'   
  get 'edit_services', to: 'pages#edit_services'    
  get 'edit_start', to: 'pages#edit_start' 
  get 'edit_settings', to: 'pages#edit_settings' 
end
