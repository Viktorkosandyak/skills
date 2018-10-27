Rails.application.routes.draw do
  get 'product/new'

  devise_for :users
  get 'home/index'
  root to: "home#index"

end
