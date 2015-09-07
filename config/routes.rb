Rails.application.routes.draw do
  root :to => 'pages#index'
  get 'signup' => 'users#new'
  resources :users, :activities, :points

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
