Rails.application.routes.draw do
  get 'gossips/new'
  get 'gossips/show'
  get 'gossips/edit'
  get 'gossips/update'
  get 'gossips/destroy'
  devise_for :moussaillons
  get 'home/index'
 	root 'home#index'
 	resources :gossips
end
