Planetr::Application.routes.draw do
  get '/planets' => 'planets#index'
  get '/planets/new' => 'planets#new'
end
