Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/brothers' => 'pages#brothers'
end
