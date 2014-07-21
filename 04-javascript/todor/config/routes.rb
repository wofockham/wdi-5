Rails.application.routes.draw do
  root :to => 'users#index'
  resources :users, :only => [:index, :new, :create]
  resources :priorities, :only => [:index, :create]
  resources :tasks, :only => [:index, :create]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end
