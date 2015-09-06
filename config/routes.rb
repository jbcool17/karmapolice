Rails.application.routes.draw do
  root :to => 'pages#index'

  get 'signup' => 'users#new'
  resources :users, :activities, :points
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  

end
