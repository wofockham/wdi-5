require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  @receipts = query_db "SELECT * FROM receipts"
  erb :receipts
end

get '/new' do
  erb :new_receipt
end

post '/' do
  # "INSERT INTO receipts (service, cost) VALUES ('Do some service', '12')"
  sql = "INSERT INTO receipts (service, cost) VALUES ('#{ params['service'] }', '#{ params['cost'] }')"

  query_db sql
  redirect to "/"
end

get '/receipts/:id' do
  id = params[:id]
  sql = "SELECT * FROM receipts WHERE id = #{ id }"
  @receipt = query_db sql
  @receipt = @receipt.first # "Flatten"

  erb :receipt
end

def query_db(sql)
  db = SQLite3::Database.new "receipts.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end














