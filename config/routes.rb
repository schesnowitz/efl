Rails.application.routes.draw do
  resources :pages
  root to: 'pages#show' 

  get 'edit_count', to: 'pages#edit_count'
end
