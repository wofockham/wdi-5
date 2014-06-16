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

post '/' do
  db = SQLite3::Database.new "receipts.db"
  db.results_as_hash = true

      # "INSERT INTO receipts (service, cost) VALUES ('Do some service', '12')"
  sql = "INSERT INTO receipts (service, cost) VALUES ('#{ params['service'] }', '#{ params['cost'] }')"
end


















