Rails.application.routes.draw do
  devise_for :users
  root 'order_forms#index'
  resources :orders
  get 'purchase', to: 'purchase#show'
end

