require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello world from Sinatra"
end

get '/hello' do
  "Something more interesting"
end

get '/greet/:firstname' do
  "Hello there #{ params[:firstname].capitalize }"
end

get '/greet/:firstname/:lastname' do
  "How do you do #{ params[:firstname].capitalize } #{ params[:lastname].upcase }"
end

get '/greet/:firstname/:lastname/:age' do
  "You are #{ params[:firstname] } #{ params[:lastname] } and you are #{ params[:age] }"
end


## Calculator
get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "the result is #{ result }"
end
