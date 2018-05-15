Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/' => 'client/products#index'
  namespace :client do
    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id' => 'products#show'
    get '/products/:id/edit' => 'products#edit'
    get '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
  end
end
