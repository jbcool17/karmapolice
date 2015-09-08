Rails.application.routes.draw do
  root :to => 'pages#index'
  
  get 'signup' => 'users#new'
  resources :users, :points

  resources :activities do
 	resources :points, :only => [:create, :index, :new]
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
