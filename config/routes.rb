Rails.application.routes.draw do
  resources :driver_applications
  resources :pages
  root to: 'pages#show' 

  get 'edit_count', to: 'pages#edit_count'
  get 'edit_performance', to: 'pages#edit_performance' 
  get 'edit_top', to: 'pages#edit_top' 
  get 'edit_footer', to: 'pages#edit_footer' 
end
