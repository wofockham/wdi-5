require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)
ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'bowling.db'
)

require_relative 'models/game'
require_relative 'models/frame'

binding.pry
