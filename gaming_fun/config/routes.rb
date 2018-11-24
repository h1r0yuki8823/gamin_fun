Rails.application.routes.draw do

  get 'reviews/new'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root to: 'products#index'
  resources :products
  resources :users
end
