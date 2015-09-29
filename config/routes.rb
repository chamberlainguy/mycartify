Rails.application.routes.draw do
  
  resources :alsoboughts
  root :to => 'products#index'

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

end
