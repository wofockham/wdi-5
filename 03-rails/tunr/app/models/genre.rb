# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Genre < ActiveRecord::Base
  has_and_belongs_to_many :songs
end
