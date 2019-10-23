Rails.application.routes.draw do
  devise_for :users
  root 'order_forms#index'
  resources :orders, only: [:new, :create, :show]
namespace :admin do 
	resources :orders
end

end
