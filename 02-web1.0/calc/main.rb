require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/calc/multiply/:x/:y' do
  @result = params[:x].to_f * params[:y].to_f
  @operation = '*'
  erb :calc
end

get '/calc/add/:x/:y' do
  @result = params[:x].to_f + params[:y].to_f
  @operation = '+'
  erb :calc
end

get '/about' do
  erb :about
end