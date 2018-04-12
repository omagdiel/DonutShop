Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  # get 'charges/new'

  # get 'charges/create'

  devise_for :users
  resources :donuts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  root to: 'donuts#index'
end
