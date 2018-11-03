Rails.application.routes.draw do
  get 'product/new'
  resources :boxers do
     resources :comments
  end
  devise_for :users
  get 'home/index'
  root to: "home#index"

end
