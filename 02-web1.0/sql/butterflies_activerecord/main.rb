require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'butterflies.db'
)

require_relative 'butterfly'
require_relative 'plant'

before do
  @families = Butterfly.select('family').uniq
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to '/butterflies'
end

# All butterflies
get '/butterflies' do
  @butterflies = Butterfly.all
  erb :butterflies
end

get '/plants' do
  @plants = Plant.all
  erb :plants
end

get '/butterflies/family/:family' do
  @butterflies = Butterfly.where(:family => params[:family])
  erb :butterflies
end

# Form for a new butterfly
get '/butterflies/new' do
  erb :new_butterfly
end

get '/plants/new' do
  erb :new_plant
end

# A specific butterfly
get '/butterflies/:id' do
  id = params[:id]
  @butterfly = Butterfly.find id
  erb :butterfly
end

get '/plants/:id' do
  id = params[:id]
  @plant = Plant.find id
  erb :plant
end

# Edit a butterfly
get '/butterflies/:id/edit' do
  id = params[:id]
  @butterfly = Butterfly.find id
  erb :edit_butterfly
end

get '/plants/:id/edit' do
  id = params[:id]
  @plant = Plant.find id
  erb :edit_plant
end

# Update a butterfly
post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.image = params[:image]
  butterfly.family = params[:family]
  butterfly.plant_id = params[:plant_id]

  butterfly.save
  redirect to "/butterflies/#{ butterfly.id }"
end

post '/plants/:id' do
  plant = Plant.find params[:id]
  plant.name = params[:name]
  plant.image = params[:image]

  plant.save
  redirect to "/plants/#{ plant.id }"
end

# Delete a butterfly
get '/butterflies/:id/delete' do
  id = params[:id]
  butterfly = Butterfly.find id
  butterfly.destroy

  redirect to "/butterflies"
end

get '/plants/:id/delete' do
  plant = Plant.find params[:id]
  plant.destroy

  redirect to "/plants"
end

# Add a new buttefly to the database
post '/butterflies' do
  Butterfly.create(
    :name => params[:name],
    :image => params[:image],
    :family => params[:family],
    :plant_id => params[:plant_id]
  )

  redirect to '/butterflies'
end

post '/plants' do
  Plant.create :name => params[:name], :image => params[:image]

  redirect to '/plants'
end

