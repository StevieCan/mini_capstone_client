Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  
  get '/' => 'client/products#index'
  namespace :client do
    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id' => 'products#show'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'

    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show'

    get '/carted_products/' => 'carted_products#index'
    post '/carted_products/' => 'carted_products#create'
    delete '/carted_products/:id' => 'carted_products#destroy'
  end
end
