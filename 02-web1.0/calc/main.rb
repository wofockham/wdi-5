require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/calc' do
  erb :form
end

get '/results' do
  @first = params[:first].to_f
  @second = params[:second].to_f

  @result = case params[:operator]
  when '+' then @first + @second
  when '-' then @first - @second
  when '*' then @first * @second
  when '/' then @first / @second
  end

  erb :calc
end

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