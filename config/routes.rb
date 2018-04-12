Rails.application.routes.draw do
  devise_for :users
  resources :donuts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :donuts do 
  member do
    put "like", to: "donuts#upvote"
    put "dislike", to: "donuts#downvote"
  end
end
end
