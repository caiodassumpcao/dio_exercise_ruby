Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index'
  resources :posts

  get "/articles", to: "articles#index"

end
