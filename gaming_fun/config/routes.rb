Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  root to: 'products#index'
  resources :products
end
