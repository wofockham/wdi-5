Basics::Application.routes.draw do
  root :to => 'pages#home'

  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/lol' => 'pages#lol'

  get '/dog' => 'dogs#index'
  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  get '/dogs/faq' => 'dogs#faq'

  get '/auto/:color' => 'auto#color'
  get '/auto/:hp/:torque' => 'auto#engine'

  get '/calc/:x/:y/:operator' => 'calc#calculate'
end
