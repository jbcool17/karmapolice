Rails.application.routes.draw do
  root :to => 'pages#index'

  resources :users, :activities, :points
end
