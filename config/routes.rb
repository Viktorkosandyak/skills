Rails.application.routes.draw do
  get 'product/new'
  resources :boxers
  devise_for :users
  get 'home/index'
  root to: "home#index"

end
