Rails.application.routes.draw do
  
  root :to => 'products#index'

  resources :orderlines
  resources :orders
  resources :alsoboughts
  resources :lineitems
  resources :carts
  resources :categories
  resources :products
  resources :buyers
  resources :charges
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  post '/addtocart/:id' => 'products#addtocart' , as: :addtocart

  get '/search' => 'products#search'

end
