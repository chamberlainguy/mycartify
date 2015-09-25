Rails.application.routes.draw do
  
  root :to => 'products#index'

  resources :lineitems
  resources :carts
  resources :categories
  resources :products
  resources :buyers
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  post '/addtocart/:id' => 'products#addtocart' , as: :addtocart

end
