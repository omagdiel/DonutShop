Rails.application.routes.draw do
  get 'pages/home', to: 'pages#home'

 get 'pages/menu', to: 'pages#menu'

 get 'pages/about_us', to: 'pages#about_us'

 get 'pages/contact', to: 'pages#contact'

 get 'pages/cart', to: 'pages#cart'

 root to: 'pages#home'

  resources :donuts

end


