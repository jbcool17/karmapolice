Rails.application.routes.draw do
  

  root 'pages#index'
  
  get 'signup' => 'users#new'#, :as => 'SIGNUP'
  resources :users, :points

  resources :activities do
 	resources :points, :only => [:create, :index, :new]
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  
  get 'graph/index'
  get 'graph/data', :defaults => { :format => 'json' }
end
