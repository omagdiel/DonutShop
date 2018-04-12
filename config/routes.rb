Rails.application.routes.draw do

  get 'pages/home', to: 'pages#home'

 get 'pages/menu', to: 'pages#menu'

 get 'pages/about_us', to: 'pages#about_us'

 get 'pages/contact', to: 'pages#contact'

 get 'pages/cart', to: 'pages#cart'

 root to: 'pages#home'

  resources :donuts

  resources :charges, only: [:new, :create]
  # get 'charges/new'

  # get 'charges/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'donuts#index'

  # resources :donuts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :donuts do
    member do
      put "like", to: "donuts#upvote"
      put "dislike", to: "donuts#downvote"
    end
  end
end
