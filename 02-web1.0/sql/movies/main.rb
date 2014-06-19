require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'active_record'

require 'pry' if development?

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'movies.db'
)

class Movie < ActiveRecord::Base
end

get '/' do
  erb :search
end

get '/search' do
  @title = params['title'].gsub(' ', '+')
  url = "http://www.omdbapi.com/?i=&s=#{ @title }"
  response = HTTParty.get(url)
  @movies = JSON.parse(response)['Search']
  erb :movie_matches
end

get '/movie/:imdbID' do
  # binding.pry
  id = params[:imdbID]
  @movie = Movie.find_by_imdbID id
  unless @movie
    url = "http://www.omdbapi.com/?i=#{ id }"
    response = HTTParty.get(url)
    @movie_data = JSON.parse(response)
    redirect to '/' unless @movie_data['Title']
    @movie = Movie.create(
      :imdbID => @movie_data['imdbID'],
      :title => @movie_data['Title'],
      :year => @movie_data['Year'],
      :poster => @movie_data['Poster']
    )
  end

  erb :movie
end
