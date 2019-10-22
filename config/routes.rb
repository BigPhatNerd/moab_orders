Rails.application.routes.draw do
  devise_for :users
  root 'order_forms#index'
namespace :admin do 
	resources :orders
end

end
