require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require 'sqlite3'

get '/' do
  redirect to '/butterflies'
end

# All butterflies
get '/butterflies' do
  @butterflies = query_db "SELECT * FROM butterflies"
  erb :butterflies
end

# Form for a new butterfly
get '/butterflies/new' do
  erb :new_butterfly
end

# A specific butterfly
get '/butterflies/:id' do
end

# Edit a butterfly
get '/butterflies/:id/edit' do
end

# Update a butterfly
post '/butterflies/:id' do
end

# Delete a butterfly
get '/butterflies/:id/delete' do
end

# Add a new buttefly to the database
post '/butterflies' do
end

def query_db(sql)
  db = SQLite3::Database.new "butterflies.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end
