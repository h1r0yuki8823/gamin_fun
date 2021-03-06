Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root to: 'products#index'
  resources :products
  resources :users
  resources :reviews do
    collection do 
      post 'confirm'
    end
  end

end
