Rails.application.routes.draw do
  get 'photos/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  
  devise_for :users
  
  resources :posts
  resources :userparams
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
