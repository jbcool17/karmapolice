Rails.application.routes.draw do
  root 'pages#index'
  
  get 'signup' => 'users#new'
  resources :users, :points

  #Nested Route - Activities/Points
  resources :activities do
 	  resources :points
  end

  #LOGIN
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  #Experimental Graph D3
  get 'graph/index'
  get 'graph/data', :defaults => { :format => 'json' }
end
