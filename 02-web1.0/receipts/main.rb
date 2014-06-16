require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :receipt
end

post '/' do
  f = File.new('receipt.txt', 'a+')

  @service = params[:service]
  @cost = params[:cost]

  f.puts("COMPANY NAME: Idiot Cousin Services")
  f.puts("Good/service provided: #{ @service }")
  f.puts("Cost: #{ @cost }")
  f.puts("Thank you for your patronage.")
  f.puts("We are missing you already.")
  f.puts("-----------------------------------")

  f.close

  erb :receipt
end