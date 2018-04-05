Rails.application.routes.draw do
  
  root to: 'pages#home'
  devise_for :users
  resources :users do
    resource :profile
  end
  get 'about', to: 'pages#about'
  get 'outdoors', to: 'pages#outdoors'
end
