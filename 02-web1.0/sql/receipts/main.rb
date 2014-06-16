require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  db = SQLite3::Database.new "receipts.db"
  db.results_as_hash = true
  @receipts = db.execute "SELECT * FROM receipts"

  erb :receipts
end

get '/new' do
  erb :new_receipt
end
