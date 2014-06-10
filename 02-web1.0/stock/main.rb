#require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  @symbol = params[:symbol]
  unless @symbol.nil?
    @symbol.upcase!
    @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  end

  erb :stock
end
