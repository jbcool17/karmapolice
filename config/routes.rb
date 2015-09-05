Rails.application.routes.draw do
  

  get 'points/index'

  get 'points/show'

  get 'points/new'

  get 'points/edit'

  root :to => 'users#index'

  resources :users, :activities, :points
end
