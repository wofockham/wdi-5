Tunr::Application.routes.draw do
  get '/haml' => 'pages#hamldemo'
  resources :users
end
